import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Chapters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return ListView(
      children: [Padding(
        padding: const EdgeInsets.fromLTRB(16,24,16,0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 42),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 70,),
                        Image(
                          image: AssetImage('images/stc.png'),
                          height: 100,
                          width: 100,
                          color: darkModeOn?Colors.white:kConstSecondaryColor,
                        ),
                        SizedBox(width: 24,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Student',
                              style: kConstHeadingStyle.copyWith(fontSize: 24),
                            ),
                            SizedBox(height: 4,),
                            Text('Technical', style: kConstHeadingStyle.copyWith(fontSize: 24)),
                            SizedBox(height: 4,),
                            Text('Community', style: kConstHeadingStyle.copyWith(fontSize: 24)),
                          ],
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    SizedBox(height: 16,),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum venenatis ligula, vel tincidunt velit mattis non. Etiam sed nibh in dui lobortis semper. Vestibulum erat quam, aliquet sit amet magna quis, posuere elementum tortor. Pellentesque euismod orci tellus, a rhoncus orci porta eu. Etiam sed auctor ligula. Curabitur scelerisque eros lectus, non vulputate velit accumsan quis. Quisque sollicitudin, justo in lobortis varius, odio tortor aliquet mi, sit amet dignissim risus odio a tortor. ',style: kConstTextStyle),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 4),child:  Text('Contact Us',style: kConstHeadingStyle.copyWith(fontSize: 16),),),
                        SizedBox(width: 18,),
                        SvgPicture.asset('images/facebook.svg',color: darkModeOn?Colors.white:kConstMainColor,height: 22,),
                        SizedBox(width: 20,),
                        SvgPicture.asset('images/linkedin.svg',color: darkModeOn?Colors.white:kConstMainColor,height: 22,),
                        SizedBox(width: 20,),
                        SvgPicture.asset('images/insta.svg',color: darkModeOn?Colors.white:kConstMainColor,height: 22,),
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
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 70,),
                        Image(
                          image: AssetImage('images/stc.png'),
                          height: 100,
                          width: 100,
                          color: darkModeOn?Colors.white:kConstSecondaryColor,
                        ),
                        SizedBox(width: 24,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Student',
                              style: kConstHeadingStyle.copyWith(fontSize: 24),
                            ),
                            SizedBox(height: 4,),
                            Text('Technical', style: kConstHeadingStyle.copyWith(fontSize: 24)),
                            SizedBox(height: 4,),
                            Text('Community', style: kConstHeadingStyle.copyWith(fontSize: 24)),
                          ],
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    SizedBox(height: 16,),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam interdum venenatis ligula, vel tincidunt velit mattis non. Etiam sed nibh in dui lobortis semper. Vestibulum erat quam, aliquet sit amet magna quis, posuere elementum tortor. Pellentesque euismod orci tellus, a rhoncus orci porta eu. Etiam sed auctor ligula. Curabitur scelerisque eros lectus, non vulputate velit accumsan quis. Quisque sollicitudin, justo in lobortis varius, odio tortor aliquet mi, sit amet dignissim risus odio a tortor. ',style: kConstTextStyle),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 4),child:  Text('Contact Us',style: kConstHeadingStyle.copyWith(fontSize: 16),),),
                        SizedBox(width: 18,),
                        SvgPicture.asset('images/facebook.svg',color: darkModeOn?Colors.white:kConstMainColor,height: 22,),
                        SizedBox(width: 20,),
                        SvgPicture.asset('images/linkedin.svg',color: darkModeOn?Colors.white:kConstMainColor,height: 22,),
                        SizedBox(width: 20,),
                        SvgPicture.asset('images/insta.svg',color: darkModeOn?Colors.white:kConstMainColor,height: 22,),
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
