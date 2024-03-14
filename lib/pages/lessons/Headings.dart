import 'package:flutter/cupertino.dart';

class Headings extends StatelessWidget {
  final String content;
  final double fontSize;
  const Headings({super.key,required this.content,required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(content,style: TextStyle(fontWeight: FontWeight.bold,fontSize: fontSize + 6),));
  }
}
