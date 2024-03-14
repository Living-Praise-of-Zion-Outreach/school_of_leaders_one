import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'package:school_of_leaders_one/pages/lessons/classes/clsLanguageSelector.dart';

class Conclusion extends StatelessWidget {
  final double fontSize;
  final String colorTheme;
  final String language;
  const Conclusion({super.key,required this.fontSize,required this.colorTheme,required this.language});

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(

      child: Padding(padding: EdgeInsets.all(20) ,
          child: Text(clsLanguagePreset.conclusion(language),
            style: TextStyle(fontSize: fontSize+10,color: Colors.white),)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),

          color:myThemes.getColor(colorTheme)),),);
  }
}
