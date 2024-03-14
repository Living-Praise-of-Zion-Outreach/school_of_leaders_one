import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/classes/clsAttributes.dart';
import 'package:school_of_leaders_one/pages/lessons/classes/clsLanguageSelector.dart';

class TitlePage extends StatelessWidget {
  final clsAttributes attributes;
  final language;
  const TitlePage({super.key,data, required this.attributes,required this.language});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 20,),
              Text(attributes.title_one,textAlign: TextAlign.right,  style: TextStyle(fontWeight: FontWeight.bold,fontSize: attributes.fontSize + 32)),
              Text(attributes.title_two,textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,fontSize: attributes.fontSize + 5)),
              SizedBox(height: 20,),
              Text(clsLanguagePreset.bible_reference(language),style: TextStyle(fontWeight: FontWeight.bold,fontSize: attributes.fontSize),),
              SizedBox(height: 5,),
              Container(
                  decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(attributes.scriptures,style: TextStyle(fontStyle: FontStyle.italic,fontSize: attributes.fontSize),
                    ),
                  )),
              SizedBox(height: 5,),
              Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(attributes.lessonNo,style: TextStyle(fontStyle: FontStyle.normal,fontSize: attributes.fontSize+100)))),
                    Text('L E S S O N'),
                  ]
              ),
            ],
          ),
        ),
      ),
        SizedBox(height: 10,),//S
      ]
    );
  }
}
