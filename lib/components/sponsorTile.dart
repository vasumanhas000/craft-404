import 'package:flutter/material.dart';


class SponsorTile extends StatelessWidget {
  final String byteImage;
  SponsorTile({this.byteImage});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 42),
      child: Container(
        child: Image.network(byteImage,height: 100,width: 100,)
      ),
    );
  }
}
