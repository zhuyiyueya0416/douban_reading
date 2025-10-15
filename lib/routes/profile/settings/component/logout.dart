import 'package:douban_reading/common/colors.dart';
import 'package:douban_reading/routes/login/login_route.dart';
import 'package:douban_reading/widgets/largetext_style.dart';
import 'package:flutter/material.dart';

void logout(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        width: double.infinity,
        height: 300,
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            lgText('退出登录'),
            Text('退出登录后，本地缓存将被清空，确定要退出登录？'),
            SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginRoute()),
                    (route) => false,
                  );
                },
                child: Text('退出登录'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeColors.red_1.withOpacity(0.5),
                  foregroundColor: themeColors.white,
                ),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('取消'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeColors.dbcolor.withOpacity(0.3),
                  foregroundColor: themeColors.white,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
