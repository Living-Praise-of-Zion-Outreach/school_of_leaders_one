import 'package:flutter/material.dart';
import '../classes/clsThemeColor.dart';
class LanguageSwitcher extends StatelessWidget {
  final clsThemeColor cls_themeColor;
  final Function(String) changeClick;
  const LanguageSwitcher({super.key,required this.changeClick,required this.cls_themeColor});

  @override
  Widget build(BuildContext context) {
    return RadioListTile<String>(
      title: Row(
        children: [
          Expanded(
              child: Text(getLabel(cls_themeColor.title))),
        ],
      ),
      value: cls_themeColor.title,
      groupValue: cls_themeColor.groupValue,
      onChanged: (value){
        changeClick(value!);
      },
      selected: cls_themeColor.groupValue == cls_themeColor.title ? true:false,
    );
  }
  String getLabel(String version){
    if(version=='English'){
      return 'English';
    }
    else if(version=='Tagalog'){
      return 'Tagalog';
    }
    else if(version=='Cebuano'){
      return 'Cebuano';
    }
    else
      return '';
  }
}
