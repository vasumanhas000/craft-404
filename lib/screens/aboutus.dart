import 'package:craft404_app/aboutUsPages/chapters.dart';
import 'package:craft404_app/aboutUsPages/speakers.dart';
import 'package:craft404_app/aboutUsPages/sponsors.dart';
import 'package:craft404_app/components/coloredtabbar.dart';
import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('About us',style: kConstHeadingStyle.copyWith(
                color: darkModeOn?Colors.white:kConstSecondaryColor
              ),),
            ),
            backgroundColor: darkModeOn?kConstSecondaryColor:Colors.white,
            bottom:  PreferredSize(
              preferredSize: Size.fromHeight(45),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ColoredTabBar(darkModeOn?kConstSecondaryColor:Colors.white, TabBar(
                  tabs: [
                    Tab(
                      child: Text('Chapters',style: kConstTabStyle.copyWith(
                      color: darkModeOn?Colors.white:kConstSecondaryColor
                      ),),
                    ),
                    Tab(
                        child: Text('Speakers',style: kConstTabStyle.copyWith(
                            color: darkModeOn?Colors.white:kConstSecondaryColor
                        ),)
                    ),
                    Tab(
                        child: Text('Sponsors',style: kConstTabStyle.copyWith(
                            color: darkModeOn?Colors.white:kConstSecondaryColor
                        ),)
                    ),
                  ],
                  isScrollable: true,
                ),),
              ),
            ),
          ),
          body: TabBarView(children: [Chapters(), Speakers(),Sponsors()]),
        ));
  }
}
