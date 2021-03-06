import 'package:craft404_app/2ndPageScreens/faq.dart';
import 'package:craft404_app/2ndPageScreens/files.dart';
import 'package:craft404_app/components/coloredtabbar.dart';
import 'package:craft404_app/constants.dart';
import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text('Resources',style: kConstHeadingStyle.copyWith(
                  color: Colors.white
              ),),
            ),
            backgroundColor: kConstSecondaryColor,
            elevation: 0,
            bottom:  PreferredSize(
              preferredSize: Size.fromHeight(45),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ColoredTabBar(kConstSecondaryColor, TabBar(tabs: [
                  Tab(
                    child: Text('Files',style: kConstTabStyle.copyWith(
                        color: Colors.white
                    ),),
                  ),
                  Tab(
                    child: Text('FAQs',style: kConstTabStyle.copyWith(
                        color: Colors.white
                    ),),
                  )
                ],
                isScrollable: true,),),
              ),
            ),
          ),


          body: TabBarView(children: [Files(),FAQ()]),
        ));
  }
}
