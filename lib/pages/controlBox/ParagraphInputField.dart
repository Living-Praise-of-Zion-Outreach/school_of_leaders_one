import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/pages/controlBox/classes/clsParagraphInputFieldFormatter.dart';
import '../../classes/Themes.dart';

class ParagraphInputField extends StatelessWidget {
  final List<clsParagraphInputFieldFormatter> richTextData;
  const ParagraphInputField({super.key,required this.richTextData});

  InlineSpan getData(clsParagraphInputFieldFormatter data){

    if(data.mode=='text'){
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
        }else{
      return WidgetSpan(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: SizedBox(
                    width: data.inputField.width,
                    child: TextField(
                    textAlign: TextAlign.center,
                    controller: data.inputField.controller,
                    cursorColor: myThemes.getColor(data.bColor),
                    decoration:
                        InputDecoration(
                        isDense: true,
                        contentPadding:
                        EdgeInsets.all(0),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: myThemes.getColor(data.bColor), width: 3),
                          ),
                        ),
                    ),
                    ),
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
