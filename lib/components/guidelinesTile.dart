import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';

class GuidelinesTile extends StatelessWidget {
  final String text;
  GuidelinesTile({this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16,0,16,8),
      child: Container(
        child: Text(text,style: kConstHeadingStyle.copyWith(fontSize: 18),),
      ),
    );
  }
}
