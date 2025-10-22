import 'package:douban_reading/routes/profile/settings/profile_info.dart';
import 'package:douban_reading/states/auth_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/colors.dart';
import '../../../widgets/build_texticon.dart';
import '../../../widgets/largetext_style.dart';
import '../settings/component/edit_person_info.dart';

class PersonInfo extends StatefulWidget {
  @override
  State<PersonInfo> createState() => _SimpleInfoState();
}

class _SimpleInfoState extends State<PersonInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
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
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditPersonInfo()),
                );
              },
              child: ClipOval(
                child: Image.asset('assets/tx/tx1.jpg', width: 80, height: 80),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Consumer<AuthProvider>(
                  builder: (context, authProvider, child) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditPersonInfo(),
                          ),
                        );
                      },
                      child: lgText(authProvider.user?.displayName ?? '未登录'),
                    );
                  },
                ),
                buildTextIcon(
                  '本周阅读时长1小时41分钟',
                  Icons.chevron_right,
                  Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ],
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoDialogRoute(
                    builder: (context) => ProfileInfo(),
                    context: context,
                  ),
                );
              },
              child: buildTextIcon(
                '我的主页',
                Icons.chevron_right,
                Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
