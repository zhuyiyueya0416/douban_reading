import 'package:douban_reading/widgets/largetext_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/build_text_icon.dart';
import '../../../widgets/build_texticon.dart';
import '../component/person_info.dart';
import 'component/logout.dart';
import 'component/edit_person_info.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _switchState = false;

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
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '账号',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 16,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceVariant,
                borderRadius: BorderRadius.circular(16),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditPersonInfo()),
                  );
                },
                child: buildText_Icon('账号与安全'),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '阅读设置',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 16,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceVariant,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '护眼模式',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  Switch(
                    value: _switchState,
                    onChanged: (value) {
                      setState(() {
                        _switchState = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              '其他',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 16,
              ),
            ),
            Container(
              //height: 100,
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceVariant,
                borderRadius: BorderRadius.circular(16),
              ),
              child: InkWell(
                onTap: () => logout(context),
                child: buildText_Icon('退出登录'),
              ),
              //child: buildText_Icon('退出登录'),
            ),
          ],
        ),
      ),
    );
  }
}
