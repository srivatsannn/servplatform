import 'package:flutter/material.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/ui/widgets/add_button.dart';

class AddButtonViewModel extends BaseViewModel {
  Color _val;
  Color get val => _val;

  void init() {
    setState(ViewState.DataFetched);
  }

  void updateColor() {
    var _color = Colors.red;
    setState(ViewState.DataFetched);
  }
}
