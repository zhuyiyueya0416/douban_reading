import 'dart:ui';

import 'package:flutter/cupertino.dart';

// 名字等
// final TextStyle lgTextStyle = TextStyle(
//   fontSize: 24,
//   fontWeight: FontWeight.w500,
// );

Widget lgText(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
  );
}
