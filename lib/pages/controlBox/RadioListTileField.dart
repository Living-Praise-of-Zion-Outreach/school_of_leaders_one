import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/classes/Themes.dart';
import 'classes/clsRadioField.dart';

class RadioListTileField extends StatelessWidget {
  final List<clsRadioField> data;
  final String colorThemes;
  const RadioListTileField({super.key,required this.data, required this.colorThemes});

  Widget getRadioWidget(clsRadioField data){
    return Expanded(
      flex: 1,
      child: Container(
        width: data.width,
        child: RadioListTile(
          activeColor: myThemes.getColor(colorThemes),
          title: Text(data.value,style: TextStyle(fontSize: data.fontSize)),
          value: data.value,
          groupValue: data.groupValue,
          onChanged: (value){
              data.onChanged(value.toString());
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: data.map((e) => getRadioWidget(e)).toList(),
    );
  }
}
