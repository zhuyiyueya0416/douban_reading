// 上图标下文本
import 'package:flutter/cupertino.dart';

Widget buildIconText(String text, String imgPath,bool isColor,Color? color1,Color? color2) {
  Widget imageWidget = Image.asset(imgPath, width: 24, height: 24);
  imageWidget = Stack(
    children: [
      Image.asset(imgPath, width: 32, height: 32),
      isColor ?Positioned(
        right: 0,
        bottom: 0,
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                color1!,
                color2!,
              ],
            ),
            shape: BoxShape.circle,
          ),
        ),
      ) : Container(),
    ],
  );

  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      imageWidget,
      SizedBox(height: 3,),
      Text(
        text,
        style: TextStyle(fontSize: 12),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      Spacer(),
    ],
  );
}