import 'package:douban_reading/widgets/center_icon.dart';
import 'package:douban_reading/widgets/top_img.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/book_col.dart';
import '../../../widgets/book_row.dart';
import '../../../widgets/refresh_indicator.dart';
import '../../../widgets/show_toast.dart'; // 导入自定义刷新组件

class FeaturedView extends StatefulWidget {
  @override
  State<FeaturedView> createState() => _FeaturedViewState();
}

class _FeaturedViewState extends State<FeaturedView> {
  Future<void> _refreshData() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollRefreshIndicator(
        onRefresh: _refreshData,
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
                      'https://pic.arkread.com/banner/campaign/u/17268.1758003866!campaign_unedited.png',
                      'https://pic.arkread.com/banner/campaign/u/17242.1756807959!campaign_unedited.png',
                      'https://pic.arkread.com/banner/campaign/u/17224.1756196475!campaign_unedited.png',
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
                  'assets/imgs/vip.png',
                  'assets/imgs/fan-fic.png',
                ],
                labelArr: ['排行', '推荐', '书库', '会员', '同人'],
              ),
              BookRow(
                rows: 2,
                titleArr: ['为你推荐'],
                // 大标题
                imgPathArr: [
                  'assets/tx/tx1.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx2.jpg',
                ],
                // 图片
                nameArr: ['name', 'name2', 'name3'],
                // 书名
                writerArr: ['weiter1', 'writer2', 'w3'],
                // 概览
                aboutArr: ['11', '22', '333'],
              ),
              BookCol(
                titleArr: ['畅销金榜'],
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
                rows: 3,
                titleArr: ['编辑强推'],
                // 大标题
                imgPathArr: [
                  'assets/tx/tx1.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx2.jpg',
                ],
                // 图片
                nameArr: ['name', 'name2', 'name3'],
                // 书名
                writerArr: ['weiter1', 'writer2', 'w3'],
                // 概览
                aboutArr: ['11', '22', '333'],
              ),
              BookRow(
                rows: 3,
                titleArr: ['签约新作'],
                // 大标题
                imgPathArr: [
                  'assets/tx/tx1.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx2.jpg',
                ],
                // 图片
                nameArr: ['name', 'name2', 'name3'],
                // 书名
                writerArr: ['weiter1', 'writer2', 'w3'],
                // 概览
                aboutArr: ['11', '22', '333'],
              ),
              BookRow(
                rows: 8,
                titleArr: ['猜你喜欢'],
                // 大标题
                imgPathArr: [
                  'assets/tx/tx1.jpg',
                  'assets/tx/tx4.jpg',
                  'assets/tx/tx2.jpg',
                  'assets/tx/tx3.jpg',
                ],
                // 图片
                nameArr: ['name', 'name2', 'name3', 'name4'],
                // 书名
                writerArr: ['weiter1', 'writer2', 'w3', 'w4'],
                // 概览
                aboutArr: ['11', '22', '333', '444'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: ScrollRefreshIndicator(
      onRefresh: () async {
        await Future.delayed(Duration(milliseconds: 500));
      },
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
                    'https://pic.arkread.com/banner/campaign/u/17268.1758003866!campaign_unedited.png',
                    'https://pic.arkread.com/banner/campaign/u/17242.1756807959!campaign_unedited.png',
                    'https://pic.arkread.com/banner/campaign/u/17224.1756196475!campaign_unedited.png',
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
                'assets/imgs/vip.png',
                'assets/imgs/fan-fic.png',
              ],
              labelArr: ['排行', '推荐', '书库', '会员', '同人'],
            ),
            BookRow(
              rows: 2,
              titleArr: ['为你推荐'],
              // 大标题
              imgPathArr: [
                'assets/tx/tx1.jpg',
                'assets/tx/tx4.jpg',
                'assets/tx/tx2.jpg',
              ],
              // 图片
              nameArr: ['name', 'name2', 'name3'],
              // 书名
              writerArr: ['weiter1', 'writer2', 'w3'],
              // 概览
              aboutArr: ['11', '22', '333'],
            ),
            BookCol(
              titleArr: ['畅销金榜'],
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
              rows: 3,
              titleArr: ['编辑强推'],
              // 大标题
              imgPathArr: [
                'assets/tx/tx1.jpg',
                'assets/tx/tx4.jpg',
                'assets/tx/tx2.jpg',
              ],
              // 图片
              nameArr: ['name', 'name2', 'name3'],
              // 书名
              writerArr: ['weiter1', 'writer2', 'w3'],
              // 概览
              aboutArr: ['11', '22', '333'],
            ),
            BookRow(
              rows: 3,
              titleArr: ['签约新作'],
              // 大标题
              imgPathArr: [
                'assets/tx/tx1.jpg',
                'assets/tx/tx4.jpg',
                'assets/tx/tx2.jpg',
              ],
              // 图片
              nameArr: ['name', 'name2', 'name3'],
              // 书名
              writerArr: ['weiter1', 'writer2', 'w3'],
              // 概览
              aboutArr: ['11', '22', '333'],
            ),
            BookRow(
              rows: 8,
              titleArr: ['猜你喜欢'],
              // 大标题
              imgPathArr: [
                'assets/tx/tx1.jpg',
                'assets/tx/tx4.jpg',
                'assets/tx/tx2.jpg',
                'assets/tx/tx3.jpg',
              ],
              // 图片
              nameArr: ['name', 'name2', 'name3', 'name4'],
              // 书名
              writerArr: ['weiter1', 'writer2', 'w3', 'w4'],
              // 概览
              aboutArr: ['11', '22', '333', '444'],
            ),
          ],
        ),
      ),
    ),
  );
}
