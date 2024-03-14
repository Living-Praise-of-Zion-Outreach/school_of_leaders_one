import 'package:flutter/cupertino.dart';

class SubHeadings extends StatelessWidget {
  final String content;
  final double fontSize;
  const SubHeadings({super.key,required this.content,required this.fontSize});


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(content,style: TextStyle(fontWeight: FontWeight.bold,fontSize: fontSize + 2),));
  }
}
