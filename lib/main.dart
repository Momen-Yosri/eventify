
import 'package:eventify/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
     debugShowCheckedModeBanner: false,
theme: MyAppTheme.lightTheme,
darkTheme: MyAppTheme.darkTheme, 
themeMode: ThemeMode.light,     
      initialRoute:  HomeScreen.routeName,
      routes: {
        FirstOnBoardingScreen.routeName: (context) => const FirstOnBoardingScreen(),
        HomeScreen.routeName: (context) =>  HomeScreen(),
      },
    );
  });}
}
