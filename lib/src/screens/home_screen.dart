// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
                children: [
                  Container(
                    width: double.infinity,
                    height: 280,
                    color: Color(0xff1a1a1a),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 24, left: 24),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Location',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                          fontFamily: 'Sora',
                                          fontSize: 12,
                                          color: Color(0xffA2A2A2)),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Bilzen, Tanjungbalai',
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                              fontFamily: 'Sora Semi Bold',
                                              fontSize: 14,
                                              color: Color(0xffD8D8D8)),
                                        ),
                                        SizedBox(width: 4,),
                                        Image.asset(
                                                  'assets/icons/icon-arrow-down.png',
                                                ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
