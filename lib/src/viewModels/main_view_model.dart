
import 'package:flutter/material.dart';

class MainViewModel extends ChangeNotifier {
  String _userName = '';
  String get userName => _userName;

  void setUserName(String value) {
     _userName = value;
      notifyListeners();
  }

}