import 'package:craft404_app/constants.dart';
import 'package:craft404_app/screens/aboutus.dart';
import 'package:craft404_app/screens/homepage.dart';
import 'package:craft404_app/screens/secondtab.dart';
import 'package:craft404_app/screens/thirdtab.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomNav extends StatelessWidget {
  List<Widget> _buildScreens() {
    return [
      HomePage(),
      SecondTab(),
      ThirdTab(),
      AboutUs(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.folder),
        title: ("Resources"),
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.file_download),
        title: ("Submit"),
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.info),
        title: ("About us"),
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
      ),
    ];
  }
  PersistentTabController _controller=PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kConstMainColor,
      body: SafeArea(
        child: PersistentTabView(
          screens: _buildScreens(),
          controller: _controller,
            items: _navBarsItems(),
            confineInSafeArea: true,
            backgroundColor: kConstMainColor,
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears.
            stateManagement: true,
            hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
            popAllScreensOnTapOfSelectedTab: true,
            itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
              animateTabTransition: false,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle.style2
        ),
      ),
    );
  }
}
