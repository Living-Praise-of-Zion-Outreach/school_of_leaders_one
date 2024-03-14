import 'package:flutter/material.dart';
import 'package:school_of_leaders_one/classes/clsListItemTextSpanAttributes.dart';
import 'package:school_of_leaders_one/pages/lessons/ListItemTextSpan.dart';
import '../../classes/clsListItemAttributes.dart';
import 'ListItem.dart';

class ListTextSpanBoxWrapper extends StatelessWidget {
  final List<clsListItemTextSpanAttributes> listItemData;
  const ListTextSpanBoxWrapper({super.key,required this.listItemData});
  @override
  Widget build(BuildContext context) {
    return Column(
        children:[ Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  ListItemTextSpan(listItemData: listItemData)
                ],
              ),
            ),
          ),
        ),
          SizedBox(height: 0,),
        ]
    );
  }
}
