import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopImg extends StatefulWidget {
  final List<String> imgPathArr;
  final bool autoPlay;
  final Duration autoPlayDuration;

  const TopImg({
    Key? key,
    required this.imgPathArr,
    this.autoPlay = true,
    this.autoPlayDuration = const Duration(seconds: 3),
  }) : super(key: key);

  @override
  State<TopImg> createState() => _TopImgState();
}

class _TopImgState extends State<TopImg> {
  late PageController _pageController;
  int _currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    if (widget.autoPlay && widget.imgPathArr.length > 1) {
      _startAutoPlay();
    }
  }

  void _startAutoPlay() {
    _timer = Timer.periodic(widget.autoPlayDuration, (timer) {
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          (_currentIndex + 1) % widget.imgPathArr.length,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      //margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
      height: 150,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemCount: widget.imgPathArr.length,
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      //image: AssetImage(widget.imgPathArr[index]),
                      image: widget.imgPathArr[index].startsWith('http')
                          ? NetworkImage(widget.imgPathArr[index])
                          : AssetImage(widget.imgPathArr[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 8,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.imgPathArr.length,
                (index) => Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == _currentIndex
                        ? Colors.white
                        : Colors.white54,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
