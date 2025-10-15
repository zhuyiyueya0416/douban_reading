import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildText_Icon(String text) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
        Icon(Icons.chevron_right, color: Colors.grey[600]),
      ],
    ),
  );
}