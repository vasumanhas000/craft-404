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
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('About us',style: kConstHeadingStyle.copyWith(
                color:Colors.white
              ),),
            ),
            backgroundColor:kConstSecondaryColor,
            bottom:  PreferredSize(
              preferredSize: Size.fromHeight(45),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ColoredTabBar(kConstSecondaryColor, TabBar(
                  tabs: [
                    Tab(
                      child: Text('Chapters',style: kConstTabStyle.copyWith(
                      color:Colors.white
                      ),),
                    ),
                    Tab(
                        child: Text('Speakers',style: kConstTabStyle.copyWith(
                            color: Colors.white
                        ),)
                    ),
                    Tab(
                        child: Text('Sponsors',style: kConstTabStyle.copyWith(
                            color: Colors.white
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
