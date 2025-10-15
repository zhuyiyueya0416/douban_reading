import 'package:douban_reading/routes/published/component/featured.dart';
import 'package:douban_reading/routes/published/component/vip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class publishedRoute extends StatefulWidget {
  @override
  _publishedRouteState createState() => _publishedRouteState();
}

class _publishedRouteState extends State<publishedRoute>
    with SingleTickerProviderStateMixin {
  List tabs = ['精选', '会员'];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/imgs/shoppingcart.png'),
        title: TextField(
          //textAlign: TextAlign.center,
          decoration: InputDecoration(
            hint: Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                    child: Image.asset(
                      'assets/imgs/search.png',
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,
                    ),
                  ),
                  TextSpan(
                    text: '   大家都在搜',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: [
          Image.asset('assets/imgs/classification.png', width: 24, height: 24),
          SizedBox(width: 10),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map((e) => Tab(text: e)).toList(),
          //isScrollable: true,
          //padding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
        ),
      ),
      body: TabBarView(
        //构建
        controller: _tabController,
        children: [FeaturedView(), VipView()],
      ),
    );
  }
}
