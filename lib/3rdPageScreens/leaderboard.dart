import 'package:craft404_app/components/leaderboardTile.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craft404_app/constants.dart';

class LeaderBoard extends StatefulWidget {
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  final fireStore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(stream: fireStore.collection('leaderboard').snapshots(),
      builder: (context,snapshot){
        if(snapshot.hasData){
          final messages= snapshot.data.docs;
          List<Widget> messageWidgets=[];
          for(var message in messages){
            final messageName = message.data()['name'];
            final messagePosition = message.data()['position'];
            final messageWidget = LeaderBoardTile(name: messageName,position: messagePosition,);
            messageWidgets.add(messageWidget);
          }
          return Padding(
            padding: const EdgeInsets.only(top: 24),
            child: ListView(
              children: messageWidgets,
            ),
          );
        }
        else{
          return Center(
            child: Text('LeaderBoard will be displayed here',style: kConstHeadingStyle.copyWith(fontSize: 20),)
          );
        }
      },
    );
  }
}
