import 'package:flutter/cupertino.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isLight = true;
  bool get isLight => _isLight;

  void toggleTheme() {
    _isLight = !_isLight;
    notifyListeners();
  }
}