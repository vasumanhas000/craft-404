import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:craft404_app/components/speakerTile.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Speakers extends StatefulWidget {
  @override
  _SpeakersState createState() => _SpeakersState();
}

class _SpeakersState extends State<Speakers> {
  final fireStore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return StreamBuilder<QuerySnapshot>(stream: fireStore.collection('speakers').snapshots(),
      builder: (context,snapshot){
      if(snapshot.hasData){
        final messages= snapshot.data.docs;
        List<Widget> messageWidgets=[];
        for(var message in messages){
          final messageText = message.data()['Name'];
          final messageBio=message.data()['Bio'];
          final messageImage=message.data()['Image'];
          final messageWidget = SpeakerTile(
            name: messageText,bio: messageBio,image: messageImage,darkModeOn: darkModeOn,
          );
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
          child: SpinKitDoubleBounce(
            color: kConstMainColor,
          ),
        );
      }
      },
    );
  }
}
