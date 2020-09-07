import 'package:craft404_app/components/filesTile.dart';
import 'package:flutter/material.dart';
import 'package:craft404_app/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Files extends StatefulWidget {
  @override
  _FilesState createState() => _FilesState();
}

class _FilesState extends State<Files> {
  final fireStore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return StreamBuilder<QuerySnapshot>(stream: fireStore.collection('files').snapshots(),
      builder: (context,snapshot){
        if(snapshot.hasData){
          final messages= snapshot.data.docs;
          List<Widget> messageWidgets=[];
          for(var message in messages){
            final messageName = message.data()['name'];
            final messageDescription = message.data()['description'];
            final messageIcon = message.data()['icon'];
            final messageLink=message.data()['link'];
            final messageDate=message.data()['date'];
            final messageWidget = FileTile(name: messageName,bio: messageDescription,icon: messageIcon,date: messageDate,link: messageLink,darkModeOn: darkModeOn,);
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
