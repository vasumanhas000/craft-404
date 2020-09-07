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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 70,),
                Image(image: NetworkImage(image),height: 100,width: 100,color:Colors.white,),
                SizedBox(width: 24,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name.split(' ')[0],style: kConstHeadingStyle.copyWith(fontSize: 24),),
                    SizedBox(height: 4,),
                    Text(name.split(' ')[1],style: kConstHeadingStyle.copyWith(fontSize: 24),),
                  ],
                ),
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
