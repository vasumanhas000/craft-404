import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';

class SpeakerTile extends StatelessWidget {
  final String name,bio,image;
  SpeakerTile({this.name,this.bio,this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16,0,16,42),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: NetworkImage(image),height: 100,width: 100,color: Colors.white,),
                Text(name,style: kConstHeadingStyle,),
              ],
            ),
            SizedBox(height: 16,),
            Text(bio,style: kConstTextStyle,),
          ],
        ),
      ),
    );
  }
}
