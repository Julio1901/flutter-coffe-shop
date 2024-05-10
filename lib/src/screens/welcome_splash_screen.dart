import 'package:coffe_shop/src/viewModels/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomeSplashScreen extends StatelessWidget {
  const WelcomeSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // final MainViewModel mainViewModel = MainViewModel();

    return Container(
      child: Center(
        child: Consumer<MainViewModel>(builder: (context, mainViewModel, _) 
        => Text('Welcome ${mainViewModel.userName}', textDirection: TextDirection.ltr,) ,
        )
      ),
    );
  }
}