import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:craft404_app/components/sponsorTile.dart';

class Sponsors extends StatefulWidget {
  @override
  _SponsorsState createState() => _SponsorsState();
}

class _SponsorsState extends State<Sponsors> {
  final fireStore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(stream: fireStore.collection('sponsors').snapshots(),
      builder: (context,snapshot){
        if(snapshot.hasData){
          final messages= snapshot.data.docs;
          List<Widget> messageWidgets=[];
          for(var message in messages){
            final messageImage = message.data()['image'];
            print(messageImage);
            final messageWidget = SponsorTile(byteImage:messageImage,);
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
