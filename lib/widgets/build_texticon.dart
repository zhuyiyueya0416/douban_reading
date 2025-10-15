// text + icon 左右
import 'package:flutter/cupertino.dart';

Widget buildTextIcon(String text, IconData icon, Color? color) {
  return Row(
    children: [
      Text(text, style: TextStyle(color: color)),
      Icon(icon, color: color),
    ],
  );
}