import 'package:flutter/material.dart';
import 'package:musicplayerapp/Screens/Home_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'MohrRounded',
        primarySwatch: Colors.blueGrey,
      ),
      home: HomeScreen(),
    );
  }
}
