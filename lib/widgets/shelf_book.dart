import 'package:douban_reading/widgets/largetext_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ShelfBook(String imgPath, String name, String writer, String? about,bool more) {
  return Container(
    //padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    //alignment: Alignment.topLeft,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                imgPath,
                width: 56,
                height: 72,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                lgText(name),
                Text('$writer', style: TextStyle(color: Colors.grey[600])),
                more ? Text('约$about万字', style: TextStyle(color: Colors.grey[600])) : Text(about!),
              ],
            ),
          ],
        ),
        more ?  Center(
          child: Image.asset('assets/imgs/more.png', width: 16, height: 16),
        ) : Container(),
      ],
    ),
  );
}
