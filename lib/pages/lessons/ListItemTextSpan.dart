import 'package:flutter/cupertino.dart';
import 'package:school_of_leaders_one/classes/clsRichTextFormatter.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphFormatter.dart';
import 'package:school_of_leaders_one/classes/clsListItemTextSpanAttributes.dart';
import 'package:school_of_leaders_one/pages/lessons/ParagraphZeroPaddingFormatter.dart';

class ListItemTextSpan extends StatelessWidget {
  final List<clsListItemTextSpanAttributes> listItemData;
  const ListItemTextSpan({super.key,required this.listItemData});

  Widget getRowData(String leftIdentifier, List<clsRichTextFormatter> content, double fontSize){
    return Column(
      children: [
        Row(
            mainAxisSize:MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: Text(leftIdentifier, style: TextStyle(fontWeight: FontWeight.bold))
              ),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: ParagraphZeroPaddingFormatter(richTextData: content))
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
