import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class FaqTile extends StatelessWidget {
  final String title,body;
  FaqTile({this.body,this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16,0,16,8),
      child: ExpandablePanel(
        headerAlignment: ExpandablePanelHeaderAlignment.center,
        header: Text(title,style: kConstHeadingStyle.copyWith(fontSize: 18),),
        expanded: Text(body, softWrap: true,style: kConstTextStyle,),
        tapHeaderToExpand: true,
        hasIcon: true,
        iconColor: Colors.white,
      ),
    );
  }
}
