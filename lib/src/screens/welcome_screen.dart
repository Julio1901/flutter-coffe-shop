// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              'assets/images/cup_coffe_background.png',
              fit: BoxFit.contain,
            ),
            Container(
              
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text(
                      'Fall in Love with \n Coffe in Blissful \nDelight!',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontFamily: 'Sora Semi Bold',
                          fontSize: 32,),
                    ),],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'welcome to our coxy coffee corner, wherer \nevery cup is a delighful for you',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          color: Color(0xffA2A2A2)),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Sora Semi Bold',
                              fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffC67C4E),
                            minimumSize: Size(double.infinity, 56)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ))
          ],
        )
      ],
    ));
  }
}
