import 'package:flutter/material.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MainViewModel extends BaseViewModel {
  MainViewModel({this.cartItems});
  var cartItems;

  final PanelController _pc = PanelController();
  PanelController get pc => _pc;

  int _index = 0;
  int get index => _index;

  void changeTab(int index) {
    _index = index;
    notifyListeners();
  }

  void onTapMenu(BuildContext context) {
    if (cartItems == 0) {
      _pc.close();
    } else {
      PanelState.OPEN;
      _pc.open();
    }
  }
}
