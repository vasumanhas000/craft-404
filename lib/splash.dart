import 'dart:async';

import 'package:craft404_app/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNav())));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
          ),
          SvgPicture.asset('images/splash.svg',height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,),
        ],
      ),
    );
  }
}

