
import 'package:flutter/material.dart';
import '../../classes/clsRichTextFormatter.dart';
import '../../classes/Themes.dart';

class ParagraphFormatter extends StatelessWidget {
  final List<clsRichTextFormatter> richTextData;
  const ParagraphFormatter({super.key,required this.richTextData});

  TextSpan getData(clsRichTextFormatter data){
    if(data.bColor!=''){
      return TextSpan(
          text: data.content,
          style: TextStyle(
            backgroundColor: myThemes.getLightColor(data.bColor),
            color:Colors.white,
            fontStyle: data.fontStyle,
            fontWeight: data.fontWeight,
            fontSize: data.fontSize,
          ));
    }else{
      return TextSpan(
            text: data.content,
            style: TextStyle(
            color:  data.isDarkMode ? Colors.white : Colors.black,
            fontStyle: data.fontStyle,
            fontWeight: data.fontWeight,
            fontSize: data.fontSize,
          ));
    }


  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 10, 10.0, 10.0),
      child: RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
          children: richTextData.map((e) => getData(e)).toList()
      )),
    );
  }

}
