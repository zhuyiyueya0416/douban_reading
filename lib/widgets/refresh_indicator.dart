import 'package:flutter/material.dart';

class RefreshIndicatorWidget extends StatelessWidget {
  final Widget child;
  final Future<void> Function() onRefresh;
  final bool enablePullDown;

  const RefreshIndicatorWidget({
    Key? key,
    required this.child,
    required this.onRefresh,
    this.enablePullDown = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!enablePullDown) {
      return child;
    }
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: child,
    );
  }
}

class ScrollRefreshIndicator extends StatelessWidget {
  final Widget child;
  final Future<void> Function() onRefresh;
  final Axis scrollDirection;
  final ScrollPhysics? physics;
  final EdgeInsets? padding;
  final bool enablePullDown;

  const ScrollRefreshIndicator({
    Key? key,
    required this.child,
    required this.onRefresh,
    this.scrollDirection = Axis.vertical,
    this.physics,
    this.padding,
    this.enablePullDown = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicatorWidget(
      onRefresh: onRefresh,
      enablePullDown: enablePullDown,
      child: SingleChildScrollView(
        scrollDirection: scrollDirection,
        physics: physics,
        padding: padding,
        child: child,
      ),
    );
  }
}