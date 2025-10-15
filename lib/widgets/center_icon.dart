import 'package:douban_reading/widgets/build_texticon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'build_icontext.dart';

class CenterIcon extends StatefulWidget {
  final List<String> iconArr;
  final List<String> labelArr;

  const CenterIcon({Key? key, required this.iconArr, required this.labelArr})
    : super(key: key);

  @override
  State<CenterIcon> createState() => _CenterIconState();
}

class _CenterIconState extends State<CenterIcon> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 100,
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...List.generate(
            widget.labelArr.length,
            (index) => buildIconText(
              widget.labelArr[index],
              widget.iconArr[index],
              false,
              null,
              null,
            ),
          ),
          //buildIconText(text, imgPath)
        ],
      ),
    );
  }
}
