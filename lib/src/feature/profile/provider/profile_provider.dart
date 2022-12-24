import 'package:flutter/material.dart';
import 'package:polec/src/ui/profile/components/nav_bar/navigation_bar.dart';

class SlidingBarProvider with ChangeNotifier {
  Account account = Account.statistics;
  bool markerVisible = false;

  void updateSegment(Account index) {
    account = index;
    notifyListeners();
  }

  void visibleMarker({bool visible = false}) {
    markerVisible = visible;
    notifyListeners();
  }
}
