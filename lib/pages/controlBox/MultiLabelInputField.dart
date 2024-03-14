import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';

class MultiLabelInputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String colorTheme;
  final String hint;
  final int maxLines;
  final double fontSize;
  const MultiLabelInputField({super.key,required this.controller, required this.label , required this.hint,required this.maxLines, required this.colorTheme, required this.fontSize });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 10, 10),child: Text(label,style: TextStyle(fontSize: fontSize),)),
          Expanded(
            child: Column(
              children: [TextField(
                keyboardType: TextInputType.multiline,
                maxLines: maxLines,
                controller: controller,
                cursorColor: myThemes.getColor(colorTheme),
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: myThemes.getColor(colorTheme),width: 3)),
                  hintText: hint,
                ),
              style: TextStyle(fontSize: fontSize),),
              SizedBox(height: 10.0,)]
            ),
          ),
        ],
      ),
    );
  }
}
