
import 'package:flutter/material.dart';

import 'screens/home/home_page.dart';
import 'screens/landing/first_landing_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Evently',
      
      initialRoute:  HomeScreen.routeName,
      routes: {
        FirstOnBoardingScreen.routeName: (context) => const FirstOnBoardingScreen(),
        HomeScreen.routeName: (context) =>  HomeScreen(),
      },
    );
  }
}
