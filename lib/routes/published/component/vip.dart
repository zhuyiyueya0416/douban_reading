import 'package:douban_reading/widgets/center_icon.dart';
import 'package:douban_reading/widgets/top_img.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/book_col.dart';
import '../../../widgets/book_row.dart';

class VipView extends StatefulWidget {
  @override
  State<VipView> createState() => _VipViewState();
}

class _VipViewState extends State<VipView> {
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
                child: Center(
                  child: TopImg(
                    imgPathArr: [
                      'https://pic.arkread.com/banner/campaign/u/17222.1756109066!campaign_unedited.png',
                      'https://pic.arkread.com/banner/campaign/u/17231.1756286636!campaign_unedited.png',
                      'https://pic.arkread.com/banner/campaign/u/17234.1756459313!campaign_unedited.png',
                    ],
                    autoPlay: true,
                    autoPlayDuration: Duration(seconds: 5),
                  ),
                ),
              ),
              CenterIcon(
                iconArr: [
                  'assets/imgs/rank.png',
                  'assets/imgs/classification.png',
                ],
                labelArr: ['排行', '书库'],
              ),
              BookRow(
                rows: 2,
                titleArr: ['编辑推荐'],
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
                titleArr: ['会员新书专享'],
                imgPathArr: ['assets/tx/tx1.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg'],
                nameArr: ['name', 'name2', 'name2', 'name2', 'name2', 'name2'],
                writerArr: ['weiter', 'writer2', 'writer2', 'writer2', 'writer2', 'writer2'],
              ),
              BookCol(
                titleArr: ['会员限免'],
                imgPathArr: ['assets/tx/tx1.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg'],
                nameArr: ['name', 'name2', 'name2', 'name2', 'name2', 'name2'],
                writerArr: ['weiter', 'writer2', 'writer2', 'writer2', 'writer2', 'writer2'],
              ),
              BookCol(
                titleArr: ['持续上新'],
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
