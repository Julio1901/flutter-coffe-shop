import 'package:coffe_shop/src/screens/welcome_screen.dart';
import 'package:coffe_shop/src/screens/welcome_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAppRoot());
}


class MyAppRoot extends StatelessWidget {
  const MyAppRoot({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcomeScreen', 
      routes: {
        'welcomeScreen' :(context) => WelcomeScreen(),
        'welcomeSplashScreen':(context) => WelcomeSplashScreen(),
      },
    );
  }
}