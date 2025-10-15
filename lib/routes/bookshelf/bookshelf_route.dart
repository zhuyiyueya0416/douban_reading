import 'package:douban_reading/widgets/largetext_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/inshelf.dart';
import 'component/k_top_rankings.dart';

class bookshelfRoute extends StatefulWidget {
  @override
  _bookshelfRouteState createState() => _bookshelfRouteState();
}

class _bookshelfRouteState extends State<bookshelfRoute> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('书架'),
       // elevation: 0,
        //backgroundColor: Color(0xFF24D2C8).withOpacity(0.09),
        actions: [
          Image.asset('assets/imgs/search.png', width: 20, height: 20),
          SizedBox(width: 10),
          Image.asset('assets/imgs/readinghistory.png', width: 24, height: 24),
          SizedBox(width: 10),
          Image.asset('assets/imgs/more.png', width: 16, height: 16),
          SizedBox(width: 10),
        ],
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF24D2C8).withOpacity(0.1),
                  Color(0xFF24D2C8).withOpacity(0.05),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                // 猜你喜欢/双周千字榜
                KTopRankings(),

                // 书架书
                InShelf(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
