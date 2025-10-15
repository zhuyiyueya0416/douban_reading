import 'package:douban_reading/models/user_model.dart';
import 'package:douban_reading/models/user.dart';
import 'package:douban_reading/models/isar_service.dart';
import 'package:flutter/cupertino.dart';

class AuthProvider extends ChangeNotifier {
  UserModel? _user;
  bool _isLoading = false;
  String? _error;
  final IsarService _isarService = IsarService();

  UserModel? get user => _user;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // 初始化时尝试从数据库加载用户
  Future<void> initialize() async {
    try {
      _isLoading = true;
      notifyListeners();
      final currentUser = await _isarService.getCurrentUser();
      if (currentUser != null) {
        _user = currentUser;
      }
    } catch (e) {
      _error = '初始化失败: $e';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // 登录
  Future<void> login(String phone, String password) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      await Future.delayed(const Duration(seconds: 1));

      // 使用 IsarService 查找用户
      final userModel = await _isarService.findUserByPhoneAndPassword(phone, password);

      if (userModel != null) {
        // 登录成功
        _user = userModel;
      } else {
        // 登录失败
        _error = '手机号或密码错误';
      }
    } catch (e) {
      _error = '登录失败: $e';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // 注册新用户
  Future<void> register(String phone, String password, String displayName) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      await Future.delayed(const Duration(seconds: 1));

      final existingUser = await _isarService.findUserByPhoneAndPassword(phone, password);
      if (existingUser != null) {
        _error = '用户已存在';
        return;
      }

      // 创建新用户
      final newUser = UserModel()
        ..phone = phone
        ..password = password;
       // ..displayName = displayName;

      // 保存到数据库
      await _isarService.saveUser(newUser);

      // 自动登录新用户
      _user = newUser;
    } catch (e) {
      _error = '注册失败: $e';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // 退出
  Future<void> logout() async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();
      await Future.delayed(const Duration(seconds: 1));
      _user = null;
    } catch (e) {
      _error = '退出失败: $e';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // 修改用户名
  Future<void> updateDisplayName(String newDisplayName) async {
    try {
      if (user == null) {
        _error = '用户未登录';
        return;
      }
      _isLoading = true;
      notifyListeners();

      _user!.displayName = newDisplayName;

      await _isarService.saveUser(_user!);
    } catch (e) {
      _error = '更新失败: $e';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // 获取当前登录状态
  bool get isLoggedIn => _user != null;

  // 获取领域模型 User
  User? get domainUser {
    return _user?.toMain();
  }

  // 清除错误信息
  void clearError() {
    _error = null;
    notifyListeners();
  }
}