import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'largetext_style.dart';

class BookCol extends StatefulWidget {
  final List<String> titleArr;
  final List<String> imgPathArr;
  final List<String> nameArr;
  final List<String> writerArr;

  const BookCol({
    Key? key,
    required this.titleArr,
    required this.imgPathArr,
    required this.nameArr,
    required this.writerArr,
  }) : super(key: key);

  @override
  State<BookCol> createState() => _BookColState();
}

class _BookColState extends State<BookCol> {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  widget.titleArr[0],
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 12,
                  top: 6,
                  bottom: 6,
                  right: 6,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Text('更多'),
                    SizedBox(width: 2),
                    Image.asset('assets/imgs/right.png', width: 12, height: 12),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.imgPathArr.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          widget.imgPathArr[index],
                          width: 56,
                          height: 72,
                          fit: BoxFit.cover,
                        ),
                      ),
                      lgText(widget.nameArr[index]),
                      Text(widget.writerArr[index]),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
