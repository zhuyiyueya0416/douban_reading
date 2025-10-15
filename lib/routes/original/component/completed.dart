import 'package:douban_reading/widgets/book_col.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/book_row.dart';
import '../../../widgets/center_icon.dart';
import '../../../widgets/top_img.dart';

class CompletedView extends StatefulWidget {
  @override
  State<CompletedView> createState() => _CompletedViewState();
}

class _CompletedViewState extends State<CompletedView> {
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
                      'https://pic.arkread.com/banner/campaign/u/17267.1758003478!campaign_unedited.png',
                      'https://pic.arkread.com/banner/campaign/u/17259.1757555400!campaign_unedited.png',
                      'https://pic.arkread.com/banner/campaign/u/17214.1755772614!campaign_unedited.png',
                      'https://pic.arkread.com/banner/campaign/u/17241.1756796821!campaign_unedited.png',
                      'https://pic.arkread.com/banner/campaign/u/17220.1756090269!campaign_unedited.png',
                      'https://pic.arkread.com/banner/campaign/u/17271.1758184726!campaign_unedited.png',
                    ],
                    autoPlay: true,
                    autoPlayDuration: Duration(seconds: 5),
                  ),
                ),
              ),
              CenterIcon(
                iconArr: [
                  'assets/imgs/rank.png',
                  'assets/imgs/featured.png',
                  'assets/imgs/classification.png',
                ],
                labelArr: ['排行', '书库', '明星作者'],
              ),
              BookCol(
                titleArr: ['完结畅销'],
                imgPathArr: ['assets/tx/tx1.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg', 'assets/tx/tx4.jpg'],
                nameArr: ['name', 'name2', 'name2', 'name2', 'name2', 'name2'],
                writerArr: ['weiter', 'writer2', 'writer2', 'writer2', 'writer2', 'writer2'],
              ),
              BookRow(
                rows: 2,
                titleArr: ['完本推荐'],
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
                titleArr: ['免费精品'],
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
