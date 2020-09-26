import 'package:craft404_app/components/faqTile.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craft404_app/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  final fireStore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(stream: fireStore.collection('faq').snapshots(),
      builder: (context,snapshot){
        if(snapshot.hasData){
          final messages= snapshot.data.docs;
          List<Widget> messageWidgets=[];
          for(var message in messages){
            final messageQuestion = message.data()['question'];
            final messageAnswer = message.data()['answer'];
            final isdoubleLine=message.data()['doubleLine'];
            final messageWidget = FaqTile(title: messageQuestion,body: messageAnswer,doubleLine: isdoubleLine,);
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
