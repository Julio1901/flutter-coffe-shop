import 'package:coffe_shop/src/screens/home_screen.dart';
import 'package:coffe_shop/src/screens/welcome_screen.dart';
import 'package:coffe_shop/src/screens/welcome_splash_screen.dart';
import 'package:coffe_shop/src/viewModels/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyAppRoot());
}

class MyAppRoot extends StatelessWidget {
  const MyAppRoot({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainViewModel(),
      child:  MaterialApp(
      initialRoute: 'welcomeScreen', 
      routes: {
        'welcomeScreen' :(context) => WelcomeScreen(),
        'welcomeSplashScreen':(context) => WelcomeSplashScreen(),
        'homeScreen':(context) => HomeScreen(),
      },
    ),
    );
  }
}