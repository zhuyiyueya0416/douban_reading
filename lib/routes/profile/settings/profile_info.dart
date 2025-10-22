import 'package:douban_reading/common/colors.dart';
import 'package:douban_reading/widgets/largetext_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../states/auth_provider.dart';
import '../../../widgets/book_col.dart';
import 'component/edit_person_info.dart';

class ProfileInfo extends StatefulWidget {
  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo>
    with SingleTickerProviderStateMixin {
  List tabs = ['动态', '互动'];
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Tooltip(
            message: '分享',
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
            ),
            textStyle: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
            ),
            child: InkWell(
              onTap: () {},
              child: Image.asset('assets/imgs/more.png', width: 16, height: 16),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
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
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/tx/tx1.jpg',
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Consumer<AuthProvider>(
                          builder: (context, authProvider, child) {
                            return lgText(
                              authProvider.user?.displayName ?? '未登录',
                            );
                          },
                        ),
                        Text('data'),
                        Text('data'),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurfaceVariant.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoDialogRoute(
                          builder: ((context) => EditPersonInfo()),
                          context: context,
                        ),
                      );
                    },
                    child: Text('编辑资料'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.onSurfaceVariant.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [lgText('50h31min'), Text('累计阅读时长')]),
                  Column(children: [lgText('41'), Text('读过')]),
                  Column(children: [lgText('0'), Text('获赞')]),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.onSurfaceVariant.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: BookCol(
                titleArr: ['书架'],
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
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: themeColors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                child: Column(
                  children: [
                    TabBar(
                      controller: _tabController,
                      tabs: tabs.map((tab) => Tab(text: tab)).toList(),
                      indicatorColor: themeColors.dbcolor,
                      labelColor: themeColors.dbcolor,
                      labelStyle: TextStyle(fontSize: 16),
                      unselectedLabelStyle: TextStyle(fontSize: 16),
                      unselectedLabelColor: Theme.of(
                        context,
                      ).colorScheme.onSurfaceVariant,
                      overlayColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ),
                      splashFactory: NoSplash.splashFactory,
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Container(child: Center(child: Text('暂无动态'))),
                          Container(child: Center(child: Text('暂无互动'))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
