import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/build_text_icon.dart';

class ReadingAbout extends StatefulWidget {
  const ReadingAbout({super.key});

  @override
  State<ReadingAbout> createState() => _ReadingAboutState();
}

class _ReadingAboutState extends State<ReadingAbout> {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildText_Icon('礼券'),
          buildText_Icon('兑换'),
          buildText_Icon('礼物'),
          buildText_Icon('购买记录'),
          buildText_Icon('阅读偏好'),
          buildText_Icon('阅读报告'),
          buildText_Icon('喜欢的短篇'),
          buildText_Icon('往届读者评委'),
        ],
      ),
    );
  }
}
