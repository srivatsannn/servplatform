import 'package:flutter/material.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/ui_models/base_model.dart';

class AnimatedListItemModel extends BaseModel {
  Color _color;
  Color get color => _color;

  void init(Color color) {
    _color = color;
    setState(ViewState.DataFetched);
  }

  void updateColor() {
    _color = Colors.red;
    setState(ViewState.DataFetched);
  }
}
