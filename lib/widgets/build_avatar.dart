
import 'dart:io';

import 'package:flutter/cupertino.dart';

Widget buildAvatar(String? avatarPath) {
  if (avatarPath == null || avatarPath.isEmpty) {
    return Image.asset(
        'assets/tx/tx1.jpg', width: 80, height: 80, fit: BoxFit.cover);
  }

  if (avatarPath.startsWith('http')) {
    return Image.network(avatarPath, width: 80,
        height: 80,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Image.asset(
              'assets/tx/tx1.jpg', width: 80, height: 80, fit: BoxFit.cover);
        });
  } else if (avatarPath.startsWith('/')) {
    // 本地文件路径
    return Image.file(
        File(avatarPath), width: 80, height: 80, fit: BoxFit.cover);
  } else {
    // assets路径
    return Image.asset(avatarPath, width: 80, height: 80, fit: BoxFit.cover);
  }
}