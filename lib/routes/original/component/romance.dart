import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/book_col.dart';
import '../../../widgets/book_row.dart';
import '../../../widgets/center_icon.dart';
import '../../../widgets/top_img.dart';

class RomanceView extends StatefulWidget {
  @override
  State<RomanceView> createState() => _RomanceViewState();
}

class _RomanceViewState extends State<RomanceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  // 背景颜色渐变
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF24D2C8).withOpacity(0.09),
                      Color(0xFF24D2C8).withOpacity(0.01),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: BookRow(
                  rows: 2,
                  titleArr: ['重磅推荐'],
                  imgPathArr: [
                    'assets/tx/tx1.jpg',
                    'assets/tx/tx4.jpg',
                    'assets/tx/tx2.jpg',
                  ],
                  nameArr: ['name', 'name2', 'name3'],
                  writerArr: ['weiter1', 'writer2', 'w3'],
                  aboutArr: ['11', '22', '333'],
                ),
              ),
              CenterIcon(
                iconArr: [
                  'assets/imgs/rank.png',
                  'assets/imgs/featured.png',
                  'assets/imgs/classification.png',
                  'assets/imgs/vip.png',
                ],
                labelArr: ['现代言情', '古代言情', '幻想言情', '民国情缘'],
              ),
              BookRow(
                rows: 2,
                titleArr: ['title', 'title2'],
                imgPathArr: ['assets/tx/tx1.jpg', 'assets/tx/tx4.jpg'],
                nameArr: ['name', 'name2'],
                writerArr: ['weiter', 'writer2'],aboutArr: ['11','22',]
              ),
              BookRow(
                rows: 3,
                titleArr: ['完本畅销'],
                imgPathArr: [
                  'assets/tx/tx1.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx2.jpg',
                ],
                nameArr: ['name', 'name2', 'name3'],
                writerArr: ['weiter1', 'writer2', 'w3'],
                aboutArr: ['11', '22', '333'],
              ),
              BookRow(
                rows: 3,
                titleArr: ['签约新作'],
                imgPathArr: [
                  'assets/tx/tx1.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx2.jpg',
                ],
                nameArr: ['name', 'name2', 'name3'],
                writerArr: ['weiter1', 'writer2', 'w3'],
                aboutArr: ['11', '22', '333'],
              ),
              BookRow(
                rows: 3,
                titleArr: ['新近完结'],
                imgPathArr: [
                  'assets/tx/tx1.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx2.jpg',
                ],
                nameArr: ['name', 'name2', 'name3'],
                writerArr: ['weiter1', 'writer2', 'w3'],
                aboutArr: ['11', '22', '333'],
              ),
              BookCol(
                titleArr: ['经典完本'],
                imgPathArr: ['assets/tx/tx1.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg'],
                nameArr: ['name', 'name2', 'name2', 'name2', 'name2', 'name2'],
                writerArr: ['weiter', 'writer2', 'writer2', 'writer2', 'writer2', 'writer2'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
