import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'user_model.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  // 打开数据库连接
  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [UserModelSchema],
        directory: dir.path,
        inspector: true,
      );
    }
    return Isar.getInstance()!;
  }

  // 根据手机号和密码查找用户
  Future<UserModel?> findUserByPhoneAndPassword(String phone, String password) async {
    final isar = await db;
    return await isar.userModels
        .filter()
        .phoneEqualTo(phone)
        .passwordEqualTo(password)
        .findFirst();
  }

  // 保存用户信息到数据库
  Future<void> saveUser(UserModel user) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.userModels.put(user);
    });
  }

  // 从数据库中删除用户
  Future<void> deleteUser(int userId) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.userModels.delete(userId);
    });
  }

  // 获取当前已登录用户
  Future<UserModel?> getCurrentUser() async {
    final isar = await db;
    // 这里简单返回第一个用户，实际应用中可能需要更复杂的逻辑
    return await isar.userModels.where().findFirst();
  }

  // 关闭数据库连接
  Future<void> close() async {
    final isar = await db;
    await isar.close();
  }
}