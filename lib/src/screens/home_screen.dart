import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xff1a1a1a),
      ),
      child: SafeArea(
        child: Material(  
          child: Stack(
            children: [
              Column(
                 mainAxisSize: MainAxisSize.max,
                 children: [
                  Container(
                    height: 280,
                    color: Color(0xff1a1a1a),
                  )
                 ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}