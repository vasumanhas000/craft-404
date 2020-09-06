import 'package:craft404_app/components/coloredtabbar.dart';
import 'package:craft404_app/constants.dart';
import 'package:craft404_app/homescreens/day1.dart';
import 'package:craft404_app/homescreens/day2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('Timeline',style: kConstHeadingStyle.copyWith(
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
                    child: Text('Day 1',style: kConstTabStyle.copyWith(
                        color: darkModeOn?Colors.white:kConstSecondaryColor
                    ),),
                  ),
                  Tab(
                      child: Text('Day 2',style: kConstTabStyle.copyWith(
                          color: darkModeOn?Colors.white:kConstSecondaryColor
                      ),)
                  ),
                ],
                  isScrollable: true,
                ),),
              ),
            ),
          ),
          body: TabBarView(children: [Day1(), Day2()]),
        ));
  }
}
