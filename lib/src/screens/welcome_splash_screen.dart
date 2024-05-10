import 'package:flutter/material.dart';

class WelcomeSplashScreen extends StatelessWidget {
  const WelcomeSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Welcome User', textDirection: TextDirection.ltr,) ,
      ),
    );
  }
}