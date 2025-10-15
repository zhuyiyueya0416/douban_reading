import 'package:douban_reading/widgets/shelf_book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/colors.dart';

class InShelf extends StatefulWidget {
  State<InShelf> createState() => _InShelfState();
}

class _InShelfState extends State<InShelf> {
  ButtonStyle BtnBookshelfStyle() {
    return ElevatedButton.styleFrom(
      minimumSize: Size(50, 30),
      backgroundColor: themeColors.dbcolor.withOpacity(0.1),
      foregroundColor: themeColors.dbcolor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 3,
            bottom: 0,
            left: 24,
            right: 24,
          ),
          //padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Theme.of(context).colorScheme.surfaceVariant,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('全部'),
                    style: BtnBookshelfStyle(),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('分组'),
                    style: BtnBookshelfStyle(),
                  ),
                ],
              ),
              Row(
                children: [
                  TextButton(onPressed: () {}, child: Text('管理')),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('筛选'),
                        SizedBox(width: 4), // 图标和文本之间的间距
                        Image.asset(
                          'assets/imgs/bottom.png',
                          width: 12,
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          //padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          color: Theme.of(context).colorScheme.surfaceVariant,
          height: 545,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    ShelfBook('assets/tx/tx4.jpg', '鱼刺骨', '汝子牛', '25', true),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
