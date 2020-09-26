import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class FaqTile extends StatelessWidget {
  final String title,body;
  final bool doubleLine;
  FaqTile({this.body,this.title,this.doubleLine});
  String newLine(String body){
    String newL=body.replaceAll('/n', '\n');
    print(newL);
    return newL;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: doubleLine?EdgeInsets.fromLTRB(16,0,16,4):EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: ExpandablePanel(
        headerAlignment: ExpandablePanelHeaderAlignment.center,
        header: Text(title,style: kConstHeadingStyle.copyWith(fontSize: 18),),
        expanded: Padding(
          padding: doubleLine?const EdgeInsets.only(top: 8):EdgeInsets.only(top: 0),
          child: Text(newLine(body),style: kConstTextStyle,),
        ),
        tapHeaderToExpand: true,
        hasIcon: true,
        iconColor: Colors.white,
      ),
    );
  }
}
