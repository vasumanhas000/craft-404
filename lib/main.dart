import 'package:craft404_app/bottomnavbar.dart';
import 'package:craft404_app/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: kConstSecondaryColor,
        tabBarTheme: TabBarTheme(
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: kConstMainColor,width: 4),
          ),
          labelStyle: kConstTabStyle,
          unselectedLabelStyle: kConstTabStyle,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
      darkTheme: ThemeData(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
          body2: TextStyle(color: Colors.white),
          button: TextStyle(color: Colors.white),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: kConstSecondaryColor,
        tabBarTheme: TabBarTheme(
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.white,width: 3),
          ),
          labelStyle: kConstTabStyle,
          unselectedLabelStyle: kConstTabStyle,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
      home: BottomNav(),
    );
  }
}


