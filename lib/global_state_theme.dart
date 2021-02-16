import 'package:flutter/material.dart';

class ChangeTheme extends ChangeNotifier {
  static ChangeTheme instance = ChangeTheme();

  bool isDartTheme = false;

  changeTheme() {
    isDartTheme = !isDartTheme;
    notifyListeners();
  }
}
