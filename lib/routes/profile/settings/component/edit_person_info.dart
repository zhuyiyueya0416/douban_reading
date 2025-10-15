import 'package:douban_reading/states/auth_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../widgets/build_text_icon.dart';
import '../../../../widgets/show_toast.dart';

class EditPersonInfo extends StatefulWidget {
  @override
  State<EditPersonInfo> createState() => _EditPersonInfoState();
}

class _EditPersonInfoState extends State<EditPersonInfo> {



  void _EditdisplayName() {
    final TextEditingController displayNameController = TextEditingController();
    final currentName =
        Provider.of<AuthProvider>(context, listen: false).user?.displayName ??
        '';
    displayNameController.text = currentName;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('修改昵称'),
          content: TextField(
            controller: displayNameController,
            decoration: InputDecoration(hintText: currentName),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('取消'),
            ),
            TextButton(
              onPressed: () {
                final newName = displayNameController.text.trim();
                if (newName.isNotEmpty) {
                  try {
                    Provider.of<AuthProvider>(
                      context,
                      listen: false,
                    ).updateDisplayName(newName);
                    ScaffoldMessenger.of(
                      context,
                    );
                    showToast(context, '修改成功!', isSuccess: true);
                  } catch (e) {
                    showToast(context, '修改失败，请重试!', isSuccess: false);
                  }
                };
                Navigator.pop(context);
              },
              child: Text('确定'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Center(child: Text('资料与账号安全')),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Center(
                child: ClipOval(
                  child: Image.asset(
                    'assets/tx/tx1.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                '个人资料',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontSize: 16,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 24,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      InkWell(
                        onTap: _EditdisplayName,
                        child: buildText_Icon('昵称'),
                      ),
                      buildText_Icon('性别'),
                      buildText_Icon('生日'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                '账号设置',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontSize: 16,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 24,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      buildText_Icon('手机号'),
                      buildText_Icon('豆瓣'),
                      buildText_Icon('安全中心'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
