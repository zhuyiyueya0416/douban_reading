import 'package:douban_reading/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showToast(BuildContext context, String message, {required bool isSuccess}) {
  final overlayState = Overlay.of(context);
  final overlayEntry = OverlayEntry(
    builder: (context) => AnimatedOpacity(
      opacity: 1.0,
      duration: Duration(milliseconds: 200),
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: isSuccess ? themeColors.dbcolor.withOpacity(0.3) : themeColors.dbcolor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  message,
                  style: TextStyle(color: themeColors.white, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );

  overlayState.insert(overlayEntry);

  // 2秒后淡出并移除
  Future.delayed(Duration(seconds: 2), () {
    overlayEntry.remove();
  });
}