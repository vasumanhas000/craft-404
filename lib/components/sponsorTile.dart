import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class SponsorTile extends StatelessWidget {
  final String byteImage,link;
  SponsorTile({this.byteImage,this.link});
  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 42),
      child: GestureDetector(
        onTap: (){
          launchURL(link);
        },
        child: Container(
          child: Image.network(byteImage,height: 100,width: 100,)
        ),
      ),
    );
  }
}
