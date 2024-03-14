
import 'package:flutter/material.dart';

class DropDownLabelReverseField extends StatelessWidget {
  final Function onSelectedItem;
  final List<DropdownMenuItem<String>> menuList;
  final String label;
  final String value;
  final String type;
  final double fontSize;
  final int flexRight;
  const DropDownLabelReverseField({super.key,required this.menuList,required this.label,  required this.value,required this.type, required this.fontSize,  required this.onSelectedItem,required this.flexRight});

  @override
  Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex:1,
              child: DropdownButton(

                value: value,
                items: menuList,
                onChanged: (Object? value) {
                  onSelectedItem(type, value.toString());
                },
              ),
            ),
            Expanded(
                flex:flexRight,
                child: Text(label, textAlign: TextAlign.justify, style: TextStyle(fontSize: fontSize ),))
          ],
        ),
      );

    }

}
