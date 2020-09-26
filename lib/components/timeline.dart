import 'package:craft404_app/components/sizeConfig.dart';
import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  final String url;
  Timeline({this.url});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,16,0,16),
      child: Container(
        child: Image(image: NetworkImage(url),height: 550,),
      ),
    );
  }
}
