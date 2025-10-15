import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../widgets/build_icontext.dart';

class CommonFunctions extends StatefulWidget {
  const CommonFunctions({super.key});

  @override
  State<CommonFunctions> createState() => _CommonFunctions();
}

class _CommonFunctions extends State<CommonFunctions> {
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
          SizedBox(
            height: 40,
            child: Text(
              '常用功能',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),

          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1.1,
            ),
            children: [
              buildIconText(
                S.of(context).messageCenter,
                'assets/imgs/messagecenter.png',
                true,
                Color(0xFF24D2C8).withOpacity(0.3),
                Color(0xFF24D2C8).withOpacity(0.01),
              ),
              buildIconText(
                S.of(context).shoppingCart,
                'assets/imgs/shoppingcart.png',
                true,
                Color(0xFF24D2C8).withOpacity(0.3),
                Color(0xFF24D2C8).withOpacity(0.01),
              ),
              buildIconText(
                S.of(context).readingHistory,
                'assets/imgs/readinghistory.png',
                true,
                Color(0xFF24D2C8).withOpacity(0.3),
                Color(0xFF24D2C8).withOpacity(0.01),
              ),
              buildIconText(
                S.of(context).followedAuthors,
                'assets/imgs/followedauthors.png',
                true,
                Color(0xFF24D2C8).withOpacity(0.3),
                Color(0xFF24D2C8).withOpacity(0.01),
              ),
              buildIconText(
                S.of(context).myPublished,
                'assets/imgs/mypublished.png',
                true,
                Color(0xFF24D2C8).withOpacity(0.3),
                Color(0xFF24D2C8).withOpacity(0.01),
              ),
              buildIconText(
                S.of(context).notes,
                'assets/imgs/notes.png',
                true,
                Color(0xFF24D2C8).withOpacity(0.3),
                Color(0xFF24D2C8).withOpacity(0.01),
              ),
              buildIconText(
                S.of(context).helpCenter,
                'assets/imgs/helpcenter.png',
                true,
                Color(0xFF24D2C8).withOpacity(0.3),
                Color(0xFF24D2C8).withOpacity(0.01),
              ),
              buildIconText(
                S.of(context).becomeAuthor,
                'assets/imgs/becomeauthor.png',
                true,
                Color(0xFF24D2C8).withOpacity(0.3),
                Color(0xFF24D2C8).withOpacity(0.01),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
