import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/colors.dart';

Widget BuildTextFiled({
  required BuildContext context,
  required TextEditingController controller,
  required String label,
  required IconData icon,
  bool obscureText = false,
  TextInputType? keyboardType,
  TextInputAction? textInputAction,
  Widget? suffixIcon,
  String? Function(String?)? validator,
  void Function(String)? onFieldSubmitted,
}) {
  final colorScheme = Theme.of(context).colorScheme;
  return TextFormField(
    // 文本
    controller: controller,
    // 是否隐藏文本
    obscureText: obscureText,
    // 键盘类型
    keyboardType: keyboardType,
    // 键盘右下角
    textInputAction: textInputAction,
    // 表单验证函数
    validator: validator,
    // 文本样式
    style: TextStyle(
      color: colorScheme.onSurface,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    // 输入框装饰样式
    decoration: InputDecoration(
      labelText: label,
      // 左侧图标
      prefixIcon: Icon(icon),
      // 右侧图标
      suffixIcon: suffixIcon,
      labelStyle: TextStyle(
        color: colorScheme.onSurface,
        fontWeight: FontWeight.w500,
      ),
      // 是否填充背景色
      filled: true,
      // 背景填充色
      fillColor: colorScheme.surface.withOpacity(0.6),
      // 边框样式
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color:themeColors.dbcolor, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colorScheme.error, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colorScheme.error, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    ),
  );
}
