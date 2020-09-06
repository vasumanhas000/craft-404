import 'package:craft404_app/3rdPageScreens/guidelines.dart';
import 'package:craft404_app/3rdPageScreens/leaderboard.dart';
import 'package:craft404_app/components/coloredtabbar.dart';
import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('Submissions',style: kConstHeadingStyle.copyWith(
                  color: darkModeOn?Colors.white:kConstSecondaryColor
              ),),
            ),
            backgroundColor: darkModeOn?kConstSecondaryColor:Colors.white,
            elevation: 0,
            bottom:  PreferredSize(
              preferredSize: Size.fromHeight(45),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ColoredTabBar(darkModeOn?kConstSecondaryColor:Colors.white, TabBar(tabs: [
                  Tab(
                    child:Text('Guidelines',style: kConstTabStyle.copyWith(
                        color: darkModeOn?Colors.white:kConstSecondaryColor
                    ),)
                  ),
                  Tab(
                      child:Text('Leaderboard',style: kConstTabStyle.copyWith(
                          color: darkModeOn?Colors.white:kConstSecondaryColor
                      ),)
                  )
                ],
                  isScrollable: true,),),
              ),
            ),
          ),


          body: TabBarView(children: [Guidelines(), LeaderBoard()]),
        ));
  }
}
