import 'package:egypt_tour_mate/Edit_profile.dart';
import 'package:egypt_tour_mate/HomeScreen.dart';
import 'package:egypt_tour_mate/Welcom%20one.dart';
import 'package:egypt_tour_mate/Welcome%20two.dart';
import 'package:egypt_tour_mate/Welcome3.dart';
import 'package:flutter/material.dart';

int index = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Welcome1Splash.routeName,
      routes: {
        Welcome1Splash.routeName: (context) => Welcome1Splash(),
        Welcome2Splash.routeName: (context) => Welcome2Splash(),
        Welcome3splash.routeName: (context) => Welcome3splash(),
        HomeScreen.routeName: (context) => HomeScreen(),
        Edit_profile.routeName: (context) => Edit_profile(),
      },
    );
  }
}
