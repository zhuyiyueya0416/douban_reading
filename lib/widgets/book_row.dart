import 'package:douban_reading/widgets/shelf_book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookRow extends StatefulWidget {
  final int rows;
  final List<String> titleArr;
  final List<String> imgPathArr;
  final List<String> nameArr;
  final List<String> writerArr;
  final List<String> aboutArr;

  const BookRow({
    Key? key,
    required this.rows,
    required this.titleArr,
    required this.imgPathArr,
    required this.nameArr,
    required this.writerArr,
    required this.aboutArr,
  }) : super(key: key);

  @override
  State<BookRow> createState() => _BookRowState();
}

class _BookRowState extends State<BookRow> {
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
          //GridView(gridDelegate: gridDelegate)
          SizedBox(
            height: (widget.imgPathArr.length  > widget.rows ? widget.rows : widget.imgPathArr.length)* 80 + 50,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: (widget.imgPathArr.length / widget.rows).ceil(),
              itemBuilder: (context, pageIndex) {
                int startIndex = pageIndex * widget.rows;
                int endIndex =
                    (startIndex + widget.rows) > widget.imgPathArr.length
                    ? widget.imgPathArr.length
                    : startIndex + widget.rows;
                List<String> pageImgPathArr = widget.imgPathArr.sublist(
                  startIndex,
                  endIndex,
                );
                List<String> pageNamePathArr = widget.nameArr.sublist(
                  startIndex,
                  endIndex,
                );
                List<String> pageWriterPathArr = widget.writerArr.sublist(
                  startIndex,
                  endIndex,
                );
                List<String> pageAboutPathArr = widget.aboutArr.sublist(
                  startIndex,
                  endIndex,
                );
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, // 交叉轴方向的列数/行数
                    //mainAxisSpacing: 4, // 主轴间距
                    childAspectRatio: 3.2, // 宽高比
                  ),
                  physics: NeverScrollableScrollPhysics(), // 禁止内部滚动
                  itemCount: pageWriterPathArr.length,
                  itemBuilder: (context, index) {
                    return ShelfBook(
                      pageImgPathArr[index],
                      pageNamePathArr[index],
                      pageWriterPathArr[index],
                      pageAboutPathArr[index],
                      false,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
