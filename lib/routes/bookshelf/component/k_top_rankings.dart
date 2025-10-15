import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/largetext_style.dart';

class KTopRankings extends StatefulWidget {
  State<KTopRankings> createState() => _KTopRankingsState();
}

class _KTopRankingsState extends State<KTopRankings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 24),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.2),
          borderRadius: BorderRadius.circular(16)
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('猜你喜欢', ),
                Text('偏好设置',),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/tx/tx4.jpg',
                        width: 36,
                        height: 48,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        lgText('独木'),
                        Text(
                          '悬疑小说 | 社会派',
                        ),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Image.asset(
                    'assets/imgs/notes.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
