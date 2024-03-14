import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/pages/controlBox/classes/clsInputField.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';

import 'classes/clsLabelInputField.dart';

class GroupSingleLabelInputField extends StatelessWidget {
  final String label;
  final List<clsLabelInputField> data;
  final int flexSize;
  final double indentPadding;
  GroupSingleLabelInputField({required this.label,required this.data,required this.flexSize, required this.indentPadding});

  Widget getSingleLabelInputField(clsLabelInputField data){
    return Expanded(flex: flexSize, child: Padding(
      padding: EdgeInsets.fromLTRB(0,10, indentPadding,0),
      child: Row(
        children: [
          Padding(padding:EdgeInsets.fromLTRB(20, 0, 10.0, 0),child: Text(data.label)),
          Expanded(
            child: TextField(
              controller: data.controller,
              cursorColor: myThemes.getColor(data.colorTheme),
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: myThemes.getColor(data.colorTheme),width: 3)),
                hintText: data.hint,
              ),
            ),
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Column(
          children: data.map((e) => getSingleLabelInputField(e)).toList(),
        )
      ],
    );
  }
}
