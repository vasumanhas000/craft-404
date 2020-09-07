import 'package:craft404_app/constants.dart';
import 'package:craft404_app/screens/aboutus.dart';
import 'package:craft404_app/screens/homepage.dart';
import 'package:craft404_app/screens/secondtab.dart';
import 'package:craft404_app/screens/thirdtab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> _buildScreens() {
    return [
      HomePage(),
      SecondTab(),
      ThirdTab(),
      AboutUs(),
    ];
  }

  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kConstMainColor,
      body: SafeArea(
          child: IndexedStack(
            index: currentIndex,
            children: [
              HomePage(),
              SecondTab(),
              ThirdTab(),
              AboutUs(),
            ],
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kConstMainColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/timeline.png')),
            title: Text('Timeline'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/resources.png')),
            title: Text('Resources'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/submit.png')),
            title: Text('Submit',),
          ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('images/info.png')),title:Text('About us'))
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

