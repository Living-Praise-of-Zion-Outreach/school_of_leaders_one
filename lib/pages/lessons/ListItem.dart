import 'package:flutter/cupertino.dart';
import 'package:school_of_leaders_one/classes/clsListItemAttributes.dart';

class ListItem extends StatelessWidget {
  final List<clsListItemAttributes> listItemData;
  const ListItem({super.key,required this.listItemData});

  Widget getRowData(String leftIdentifier, String content, double fontSize){
    return Column(
      children: [
        Row(
          mainAxisSize:MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(leftIdentifier,style: TextStyle(fontSize: fontSize),)
            ),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Text(content,textAlign: TextAlign.left,style: TextStyle(fontSize: fontSize),))
            )
          ]
      ),
        SizedBox(height: 10.0,)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: listItemData.map((e) => getRowData(e.leftIdentifier, e.content, e.fontSize)).toList());
  }
}
