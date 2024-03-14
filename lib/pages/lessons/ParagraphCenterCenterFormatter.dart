
import 'package:flutter/material.dart';
import '../../classes/clsRichTextFormatter.dart';
import '../../classes/Themes.dart';

class ParagraphCenterCenterFormatter extends StatelessWidget {
  final List<clsRichTextFormatter> richTextData;
  final double marginGap;
  const ParagraphCenterCenterFormatter({super.key,required this.richTextData,required this.marginGap});

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
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(marginGap, 10, marginGap, 10.0),
        child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                children: richTextData.map((e) => getData(e)).toList()
            )),
      ),
    );
  }

}
