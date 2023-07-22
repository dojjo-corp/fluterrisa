import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData? appTheme;
  bool _isLight = true;
  bool get isLight => _isLight;
 
  void changeTheme(bool light) {
    _isLight = !_isLight;
    isLight ? appTheme =  ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple[200]!),
        useMaterial3: true,
      ) 
      : appTheme =  ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      );
      notifyListeners();
  }
}