import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Chapters extends StatelessWidget {
  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Padding(
        padding: const EdgeInsets.fromLTRB(16,24,16,0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 42),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('images/stc.svg',height: 100,),
                    SizedBox(height: 16,),
                    Text('Student Technical Community, VIT is a team of enthusiastic techies and excited learners from the no. 1 private engg. college of India - VIT.  With over 11 Microsoft Student Partners and Alexa Student Influencers amongst us, our chapter has been known for organizing some of the most eminent events across the campus. We are proud curators and mentors of 15+ tech talks, 10+ projects, an active medium platform, and of course, our flagship event “BREW” which had 250+ attendees. We have a mission to foster innovation via projects, while collaborating with students on our campus through workshops, webinars, and events that ensure a definitive transfer of knowledge.'),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 4),child:  Text('Contact Us',style: kConstHeadingStyle.copyWith(fontSize: 16),),),
                        SizedBox(width: 18,),
                        GestureDetector(child: SvgPicture.asset('images/facebook.svg',color: Colors.white,height: 22,),onTap: (){
                          launchURL('https://www.facebook.com/mstcvit');
                        },),
                        SizedBox(width: 20,),
                        GestureDetector(child: SvgPicture.asset('images/linkedin.svg',color:Colors.white,height: 22,),onTap: (){
                          launchURL('https://www.linkedin.com/company/micvitvellore');
                        },),
                        SizedBox(width: 20,),
                        GestureDetector(child: SvgPicture.asset('images/insta.svg',color: Colors.white,height: 22,),onTap: (){
                          launchURL('https://www.instagram.com/mstcvit/?hl=en');
                        },),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 42),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   SvgPicture.asset('images/siam.svg',height: 100,),
                    SizedBox(height: 16,),
                    Text('Society for Industrial and Applied Mathematics - is a Student technical chapter in Vellore Institute of Technology- affiliated to SIAM International and it works for the application of Mathematics along with computational science to solve real life problems. It provides the required tools to students for developing their knowledge in various fields like Technical, Design and Editorial as per one’s own interest. It also works on developing the management skills of an individual by providing the recruits a chance to conduct a few cultural and technical events which give them an exposure and makes them work for the efficient coordination of the event.'),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 4),child:  Text('Contact Us',style: kConstHeadingStyle.copyWith(fontSize: 16),),),
                        SizedBox(width: 18,),
                        GestureDetector(child: SvgPicture.asset('images/facebook.svg',color: Colors.white,height: 22,),onTap: (){
                          launchURL('https://www.facebook.com/SIAMVIT');
                        },),
                        SizedBox(width: 20,),
                        GestureDetector(child: SvgPicture.asset('images/linkedin.svg',color: Colors.white,height: 22,),onTap: (){
                          launchURL('https://www.linkedin.com/company/siam-vit/');
                        },),
                        SizedBox(width: 20,),
                        GestureDetector(child: SvgPicture.asset('images/insta.svg',color: Colors.white,height: 22,),onTap: (){
                          launchURL('https://www.instagram.com/siamvit/?hl=en');
                        },),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),]
    );
  }
}
