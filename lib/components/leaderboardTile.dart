import 'package:craft404_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeaderBoardTile extends StatelessWidget {
  final String name,position;
  LeaderBoardTile({this.name,this.position});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20,0,16,20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.cake,color: Colors.white,size: 60,),
            SizedBox(
              width: 80,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('$position place',style: kConstHeadingStyle.copyWith(fontSize: 22),),
                SizedBox(height: 5,),
                Text(name,style: kConstTextStyle.copyWith(fontSize: 19),),
              ],
            ),
          ],
        ),
      )
    );
  }
}
