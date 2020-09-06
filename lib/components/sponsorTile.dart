import 'package:flutter/material.dart';
import 'package:craft404_app/constants.dart';

class SponsorTile extends StatelessWidget {
  final String byteImage;
  final bool darkModeOn;
  SponsorTile({this.byteImage,this.darkModeOn});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 42),
      child: Container(
        child: Image.network(byteImage,color: darkModeOn?Colors.white:kConstSecondaryColor,height: 100,width: 100,)
      ),
    );
  }
}
