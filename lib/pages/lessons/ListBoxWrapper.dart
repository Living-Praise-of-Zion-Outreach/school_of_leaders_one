import 'package:flutter/material.dart';
import '../../classes/clsListItemAttributes.dart';
import 'ListItem.dart';

class ListBoxWrapper extends StatelessWidget {
  final List<clsListItemAttributes> listItemData;
  const ListBoxWrapper({super.key,required this.listItemData});
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
                ListItem(listItemData: listItemData)
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
