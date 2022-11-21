import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/profile/account/edit_components/edit_widget.dart';

class MyNotifier extends ValueNotifier<EditWidget> {
  MyNotifier(super.value);

  void changeData(bool accVis, bool editVis) {
    value.accWidgetVis = accVis;
    value.editWidgetVis = editVis;
    notifyListeners();
  }
}
