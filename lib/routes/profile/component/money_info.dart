import 'package:flutter/material.dart';

import '../../../widgets/build_texticon.dart';
import '../../../widgets/largetext_style.dart';

class MoneyInfo extends StatefulWidget {
  State<MoneyInfo> createState() => _SimpleInfoState();
}

class _SimpleInfoState extends State<MoneyInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text('6', style: lgTextStyle ?? TextStyle()),
              lgText('6'),
              buildTextIcon(
                '推荐票',
                Icons.chevron_right,
                Theme.of(context).colorScheme.onSurface,
              ),
            ],
          ),
          SizedBox(width: 20),
          SizedBox(
            height: 56,
            child: VerticalDivider(
              width: 12,
              thickness: 2,
              color: Colors.grey[300],
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              lgText('0.03'),
              // Text('0.03', style: lgTextStyle ?? TextStyle()),
              Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: '余额('),
                        WidgetSpan(child: Icon(Icons.currency_yen, size: 18)),
                        TextSpan(text: ')'),
                      ],
                    ),
                  ),
                  Icon(Icons.chevron_right, size: 24),
                ],
              ),
            ],
          ),
          Spacer(),
          Center(
            child: ElevatedButton(onPressed: () {}, child: Text('充值')),
          ),
        ],
      ),
    );
  }
}
