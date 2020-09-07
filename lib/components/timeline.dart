import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  final String url;
  Timeline({this.url});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: NetworkImage(url),),
    );
  }
}
