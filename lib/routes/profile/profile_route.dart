import 'package:douban_reading/routes/profile/component/money_info.dart';
import 'package:douban_reading/routes/profile/settings/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../states/theme_provider.dart';
import 'component/common_functions.dart';
import 'component/reading_about.dart';
import 'component/person_info.dart';

class profileRoute extends StatefulWidget {
  @override
  _profileRouteState createState() => _profileRouteState();
}

class _profileRouteState extends State<profileRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/imgs/scan.png'),
        actions: [
          InkWell(
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            child: Image.asset(
              Provider.of<ThemeProvider>(context).isLight
                  ? 'assets/imgs/light.png'
                  : 'assets/imgs/dark.png',
              width: 24,
              height: 24,
            ),
          ),
          SizedBox(width: 10),
          InkWell(onTap: () {
            Navigator.push(context, CupertinoDialogRoute(builder: ((context) => Settings()), context: context));
          },child:  Image.asset('assets/imgs/settings.png', width: 24, height: 24),),
         // Image.asset('assets/imgs/settings.png', width: 24, height: 24),
          SizedBox(width: 10),
        ],
      ),
      // backgroundColor: Colors.grey[100],
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 个人信息
              PersonInfo(),

              // 余额信息
              MoneyInfo(),

              // 常用功能
              CommonFunctions(),

              // 阅读相关
              ReadingAbout(),

              // 证照信息
              Padding(padding: EdgeInsets.all(16), child: Text('证照信息')),
            ],
          ),
        ),
      ),
    );
  }
}
