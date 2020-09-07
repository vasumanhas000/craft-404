import 'package:craft404_app/components/timeline.dart';
import 'package:flutter/material.dart';
import 'package:craft404_app/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Day1 extends StatefulWidget {
  @override
  _Day1State createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  final fireStore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return StreamBuilder<QuerySnapshot>(stream: fireStore.collection('day1').snapshots(),
      builder: (context,snapshot){
        if(snapshot.hasData){
          final messages= snapshot.data.docs;
          List<Widget> messageWidgets=[];
          for(var message in messages){
            final messageImage = message.data()['image'];
            final messageWidget = Timeline(url: messageImage,darkModeOn: darkModeOn,);
            messageWidgets.add(messageWidget);
          }
          return Padding(
            padding: const EdgeInsets.only(top: 18),
            child: ListView(
              children: messageWidgets,
            ),
          );
        }
        else{
          return Center(
            child: SpinKitDoubleBounce(
              color: kConstMainColor,
            ),
          );
        }
      },
    );
  }
}
