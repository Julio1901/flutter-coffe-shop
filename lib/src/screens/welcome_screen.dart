// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffe_shop/src/viewModels/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  // MainViewModel mainViewModel = MainViewModel();
  final TextEditingController userNameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black,
        child: Consumer<MainViewModel>(
          builder: (context, mainViewModel, _) => 
          Column(
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
                        Container(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          width: double.infinity,
                          height: 200,
                          alignment: Alignment.topLeft,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromARGB(45, 255, 255, 255),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                child: Text(
                                  'Enter with your name',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                      fontFamily: 'Sora',
                                      fontSize: 15,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ),
                              TextField(
                                controller: userNameController,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: const Color.fromARGB(
                                              255, 123, 64, 42))),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromARGB(255, 100, 68, 4)),
                                  ),
                                  hintText: 'Your name',
                                  hintStyle: TextStyle(
                                      fontFamily: 'Sora semi bold',
                                      fontSize: 15,
                                      color:
                                          Color.fromARGB(255, 140, 140, 140)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 200,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Fall in Love with \nCoffe in Blissful \nDelight!',
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  fontFamily: 'Sora Semi Bold',
                                  fontSize: 32,
                                  color: Colors.white),
                            ),
                          ],
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
                            onPressed: () {
                             mainViewModel.setUserName(userNameController.text);
                             Navigator.pushNamed(context, 'welcomeSplashScreen');
                            },
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
        )
        )
        
        );
  }
}
