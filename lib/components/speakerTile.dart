import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';

class SpeakerTile extends StatelessWidget {
  final String name,bio,image;
  SpeakerTile({this.name,this.bio,this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0,0,16,42),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: NetworkImage(image),height: 150,width: 150,),
            SizedBox(height: 6,),
            Text(name,style: kConstHeadingStyle.copyWith(fontSize: 24),),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(bio,style: kConstTextStyle,),
            ),
          ],
        ),
      ),
    );
  }
}
