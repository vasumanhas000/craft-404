import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class FileTile extends StatelessWidget {
  final String name,bio,icon,link,date;
  FileTile({this.name,this.bio,this.link,this.date,this.icon});
  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Image.network(icon,fit: BoxFit.cover,width: 50,),
        title: Align(child: Text(name,style: kConstHeadingStyle.copyWith(fontSize: 16,color: Colors.white),),alignment: Alignment.bottomLeft,),
        subtitle:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(bio,style: kConstTextStyle.copyWith(fontSize: 14,color: Colors.white)),
            SizedBox(height: 2,),
            Text(date,style: kConstTextStyle.copyWith(fontSize: 14,color: Colors.white)),
          ],
        ),
        isThreeLine: true,
        onTap: (){
          launchURL(link);
        },
      ),
    );
  }
}
