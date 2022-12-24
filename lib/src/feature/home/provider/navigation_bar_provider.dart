import 'package:flutter/material.dart';

class BottomNavigationBarProvider with ChangeNotifier {
  int currentIndex = 0;

  void updatePageSelection(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
