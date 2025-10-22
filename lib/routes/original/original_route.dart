import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../widgets/refresh_indicator.dart';
import 'component/completed.dart';
import 'component/featured.dart';
import 'component/mystery.dart';
import 'component/romance.dart';

class originalRoute extends StatefulWidget {
  @override
  _originalRouteState createState() => _originalRouteState();
}

class _originalRouteState extends State<originalRoute>
    with SingleTickerProviderStateMixin {
  TextEditingController _searchController = TextEditingController();

  List tabs = ['精选', '完本', '悬疑', '言情'];
  /// TODO：tabs中英文变化
 // List tabs = [S.of(context).featured, S.of(context).romance];

  late TabController _tabController;

  Future<void> _refreshData() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {});
  }

  @override
  void initState() {
    _searchController.addListener(() {});

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
                      TextSpan(text: '   大家都在搜',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200)),
                    ]
                )
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
        controller: _tabController,
        children: [
          RefreshIndicatorWidget(
            child: FeaturedView(),
            onRefresh: _refreshData,
          ),
          RefreshIndicatorWidget(
            child: CompletedView(),
            onRefresh: _refreshData,
          ),
          RefreshIndicatorWidget(
            child: MysteryView(),
            onRefresh: _refreshData,
          ),
          RefreshIndicatorWidget(
            child: RomanceView(),
            onRefresh: _refreshData,
          ),
        ],
      ),

    );
  }
}
