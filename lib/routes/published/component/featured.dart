import 'package:douban_reading/widgets/book_col.dart';
import 'package:douban_reading/widgets/center_icon.dart';
import 'package:douban_reading/widgets/top_img.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/book_row.dart';

class FeaturedView extends StatefulWidget {
  @override
  State<FeaturedView> createState() => _FeaturedViewState();
}

class _FeaturedViewState extends State<FeaturedView> {
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
                      'https://pic.arkread.com/banner/campaign/u/17275.1758277807!campaign_unedited.png',
                      'https://pic.arkread.com/banner/campaign/u/17272.1758277666!campaign_unedited.png',
                      'https://pic.arkread.com/banner/campaign/u/17274.1758277788!campaign_unedited.png',
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
                titleArr: ['为你推荐'],
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
                titleArr: ['重磅推荐'],
                imgPathArr: [
                  'assets/tx/tx1.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                ],
                nameArr: ['name', 'name2', 'name2', 'name2', 'name2', 'name2'],
                writerArr: [
                  'weiter',
                  'writer2',
                  'writer2',
                  'writer2',
                  'writer2',
                  'writer2',
                ],
              ),
              BookCol(
                titleArr: ['最新上架'],
                imgPathArr: [
                  'assets/tx/tx1.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                ],
                nameArr: ['name', 'name2', 'name2', 'name2', 'name2', 'name2'],
                writerArr: [
                  'weiter',
                  'writer2',
                  'writer2',
                  'writer2',
                  'writer2',
                  'writer2',
                ],
              ),
              BookCol(
                titleArr: ['热门网文小说'],
                imgPathArr: [
                  'assets/tx/tx1.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                ],
                nameArr: ['name', 'name2', 'name2', 'name2', 'name2', 'name2'],
                writerArr: [
                  'weiter',
                  'writer2',
                  'writer2',
                  'writer2',
                  'writer2',
                  'writer2',
                ],
              ),
              BookCol(
                titleArr: ['超好看的悬疑故事'],
                imgPathArr: [
                  'assets/tx/tx1.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx4.jpg',
                ],
                nameArr: ['name', 'name2', 'name2', 'name2', 'name2', 'name2'],
                writerArr: [
                  'weiter',
                  'writer2',
                  'writer2',
                  'writer2',
                  'writer2',
                  'writer2',
                ],
              ),
              BookRow(
                rows: 10,
                titleArr: ['猜你喜欢'],
                imgPathArr: ['assets/tx/tx1.jpg', 'assets/tx/tx4.jpg'],
                nameArr: ['name', 'name2'],
                writerArr: ['weiter', 'writer2'],
                aboutArr: ['11', '22'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
