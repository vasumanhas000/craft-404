import 'package:craft404_app/components/guidelinesTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craft404_app/constants.dart';

class Guidelines extends StatefulWidget {
  @override
  _GuidelinesState createState() => _GuidelinesState();
}

class _GuidelinesState extends State<Guidelines> {
  final fireStore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: fireStore.collection('guidelines').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final messages = snapshot.data.docs;
          List<Widget> messageWidgets = [];
          for (var message in messages) {
            final messageText = message.data()['text'];
            final messageWidget = GuidelinesTile(
              text: messageText,
            );
            messageWidgets.add(messageWidget);
          }
          return Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Column(
                          children: [
                            Expanded(
                                                          child: ListView(
                children: messageWidgets,
              ),
                            ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: ButtonTheme(
                      height: 38,
                                        child: FlatButton(onPressed: (){}, child: Text('Submission Portal',style: kConstHeadingStyle.copyWith(
                        color:Colors.white,fontSize:14
                      ),),
                      color: kConstMainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(5)
                      ),),
                    ),
                  )
              ]
            ),
          );
        } else {
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
