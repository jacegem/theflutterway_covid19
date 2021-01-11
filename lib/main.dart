import 'package:flutter/material.dart';
import 'package:theflutterway_covid19/constant.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: 'Poppins',
        textTheme: Typography.blackCupertino,
      ),
      home: HomeScreen(),
      // home: InfoScreen(),
    );
  }
}
