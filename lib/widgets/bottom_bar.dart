import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../routes/bookshelf/bookshelf_route.dart';
import '../routes/original/original_route.dart';
import '../routes/profile/profile_route.dart';
import '../routes/published/published_route.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    originalRoute(),
    publishedRoute(),
    profileRoute(),
    bookshelfRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // body:  _pages[_currentIndex],
      body: SafeArea(child: _pages[_currentIndex],),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          // 底部导航栏样式
         // backgroundColor: Colors.white,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedItemColor: Color(0xFF24D2C8),
         // unselectedItemColor: Colors.black,
          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
          showUnselectedLabels: true,
          elevation: 0,
          enableFeedback: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/imgs/original.png',width: 24,height: 24,fit: BoxFit.contain,),
              activeIcon: Image.asset('assets/imgs/original_active.png',width: 24,height: 24,fit: BoxFit.contain,),
              label: S.of(context).original,
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/imgs/published.png',width: 24,height: 24,fit: BoxFit.contain,),
              activeIcon: Image.asset('assets/imgs/published_active.png',width: 24,height: 24,fit: BoxFit.contain,),
              label: S.of(context).published,
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/imgs/profile.png',width: 24,height: 24,fit: BoxFit.contain,),
              activeIcon: Image.asset('assets/imgs/profile_active.png',width: 24,height: 24,fit: BoxFit.contain,),
              label: S.of(context).profile,
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/imgs/bookshelf.png',width: 24,height: 24,fit: BoxFit.contain,),
              activeIcon: Image.asset('assets/imgs/bookshelf_active.png',width: 24,height: 24,fit: BoxFit.contain,),
              label: S.of(context).bookshelf,
            ),
          ],
        ),
      ),
    );
  }
}
