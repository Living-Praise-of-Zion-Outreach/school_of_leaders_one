import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';

class SingleLabelInputField extends StatelessWidget {
  final TextEditingController controller;
  final String colorTheme;
  final String hint;
  final String label;
  final double indentPadding;
  final double fontSize;
  const SingleLabelInputField({super.key,required this.controller, required this.label, required this.hint, required this.colorTheme, required this.indentPadding,required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0,10, indentPadding,0),
      child: Row(
        children: [
          Padding(padding:EdgeInsets.fromLTRB(20, 0, 10.0, 0),child: Text(label)),
          Expanded(
            child: TextField(
              controller: controller,
              cursorColor: myThemes.getColor(colorTheme),
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: myThemes.getColor(colorTheme),width: 3)),
                hintText: hint,
              ),
            style: TextStyle(fontSize: fontSize),),
          )
        ],
      ),
    );
  }
}
