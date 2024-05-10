import 'package:coffe_shop/src/viewModels/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomeSplashScreen extends StatefulWidget {
  const WelcomeSplashScreen({super.key});

  @override
  State<WelcomeSplashScreen> createState() => _WelcomeSplashScreenState();
}

class _WelcomeSplashScreenState extends State<WelcomeSplashScreen> {

 double _opacity = 0.0;

 @override
  void initState() {
    super.initState();
    _navigateToNextScreen();

    Future.delayed(Duration(milliseconds: 500), () {
     setState(() {
        _opacity = 1.0;
     });
    });
  }

  void _navigateToNextScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, 'homeScreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color.fromARGB(255, 63, 18, 3),
        child: Center(
          child: Consumer<MainViewModel>(builder: (context, mainViewModel, _) 
          => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(35, 255, 255, 255),
                 borderRadius: BorderRadius.circular(30)
                ),
                width: (MediaQuery.of(context).size.width - 30),
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedOpacity(opacity: _opacity, duration: Duration(seconds: 3), 
                    child: Text(
                      'Welcome \n${mainViewModel.userName}', textDirection: TextDirection.ltr,
                       style: TextStyle(
                                  fontFamily: 'Sora Semi Bold',
                                  fontSize: 32,
                                  color: Colors.white,
                                  decoration: TextDecoration.none
                                  ),
                      ) ,
                    ),
                    
                  ],
                )
              )
            ],
          ),
          )
        ),
      ),
    );
  }
}