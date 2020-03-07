import 'dart:async';

import 'package:flutter/material.dart';
import 'package:servplatform/core/models/service/service.dart';
import 'package:servplatform/ui/widgets/stepper_touch.dart';
import 'package:servplatform/ui/widgets/switcher_touch.dart';

class AddButton extends StatefulWidget {
  final Function onTap;
  final Function onUpdateQuantity;
  final Function onRemove;

  final String text;
  final String is_multiple;
  final int initialValue;

  AddButton(
      {Key key,
      this.onTap,
      this.onUpdateQuantity,
      this.onRemove,
      this.text,
      this.is_multiple,
      this.initialValue});

  @override
  State<StatefulWidget> createState() => AddButtonState();
}

class AddButtonState extends State<AddButton> with TickerProviderStateMixin {
  AnimationController _buttonController;
  AnimationController _checkButtonControler;

  Animation _squeezeAnimation;
  Animation _bounceAnimation;

  bool _isSuccessful = false;
  bool _isErrored = false;
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    /* var _check = Container(
        alignment: FractionalOffset.center,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius:
              new BorderRadius.all(Radius.circular(_bounceAnimation.value / 2)),
        ),
        width: _bounceAnimation.value,
        height: _bounceAnimation.value,
        child: _bounceAnimation.value > 20
            ? Icon(
                Icons.check,
                color: Colors.green,
                size: 20
              )
            : null); */

    var _check = SwitcherTouch(
        initialValue: widget.initialValue,
        direction: Axis.horizontal,
        withSpring: true,
        onChanged: (int value) =>
            {setState(() => _value = value), _onUpdateQuantity(_value)});

    var _cross = Container(
        alignment: FractionalOffset.center,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius:
              BorderRadius.all(Radius.circular(_bounceAnimation.value / 2)),
        ),
        width: _bounceAnimation.value,
        height: _bounceAnimation.value,
        child: _bounceAnimation.value > 20
            ? Icon(
                Icons.close,
                color: Colors.white,
              )
            : null);

    var _loader = SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            strokeWidth: 1.5));

    var _stepper = StepperTouch(
        initialValue: widget.initialValue,
        direction: Axis.horizontal,
        withSpring: true,
        onChanged: (int value) =>
            {setState(() => _value = value), _onUpdateQuantity(_value)});

    var _btn = ButtonTheme(
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(35)),
      minWidth: _squeezeAnimation.value,
      height: 30,
      child: RaisedButton(
          padding: EdgeInsets.all(0),
          child: _squeezeAnimation.value > 150
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //TODO once currency symbol variable is added Text("${service.currency} ${service.price}"),
                    //Text('\$'),
                    // Text('\$ ${model.service.price}',
                    Text(widget.text,
                        style: textTheme.caption.copyWith(
                          color: Colors.black,
                        )),
                    Icon(
                      Icons.add,
                      size: 18,
                      color: Colors.blue,
                    ),
                  ],
                )
              : _loader,
          color: Colors.white,
          onPressed: () async {
            _start();
          }),
    );

    return Container(
        height: 30,
        child: Center(
            child: _isErrored
                ? _cross
                : _isSuccessful
                    ? widget.is_multiple == '1' ? _stepper : _check
                    : _btn));
  }

  @override
  void initState() {
    super.initState();

    AddButtonController _btnController = new AddButtonController();

    _buttonController = new AnimationController(
        duration: new Duration(milliseconds: 500), vsync: this);

    _checkButtonControler = new AnimationController(
        duration: new Duration(milliseconds: 1000), vsync: this);

    _bounceAnimation = Tween<double>(begin: 0, end: 30).animate(
        new CurvedAnimation(
            parent: _checkButtonControler, curve: Curves.elasticOut));
    _bounceAnimation.addListener(() {
      setState(() {});
    });

    _squeezeAnimation = Tween<double>(begin: 300, end: 30).animate(
        new CurvedAnimation(
            parent: _buttonController, curve: Curves.easeInOutCirc));
    _squeezeAnimation.addListener(() {
      setState(() {});
    });

    _squeezeAnimation.addStatusListener((state) {
      if (state == AnimationStatus.completed) {
        _onTap(_btnController);
      }
    });

    _btnController?._addListeners(
      _start,
      _stop,
      _success,
      _error,
      _reset,
    );
  }

  _start() {
    _buttonController.forward();
  }

  _stop() {
    _isSuccessful = false;
    _isErrored = false;
    _buttonController.reverse();
  }

  _success() {
    _isSuccessful = true;
    _isErrored = false;
    _checkButtonControler.forward();
  }

  _error() {
    _isErrored = true;
    _checkButtonControler.forward();
  }

  _reset() {
    _isSuccessful = false;
    _isErrored = false;
    _buttonController.reverse();
  }

  void _onTap(AddButtonController _btnController) async {
    widget.onTap();
    _btnController.success();
  }

  void _onUpdateQuantity(int _v) async {
    if (_v == 0) {
      widget.onRemove();
      _isSuccessful = false;
      _isErrored = false;
      _buttonController.reverse();
    } else {
      widget.onUpdateQuantity(_v);
    }
  }
}

class AddButtonController {
  VoidCallback _startListener;
  VoidCallback _stopListener;
  VoidCallback _successListener;
  VoidCallback _errorListener;
  VoidCallback _resetListener;

  _addListeners(
      VoidCallback startListener,
      VoidCallback stopListener,
      VoidCallback successListener,
      VoidCallback errorListener,
      VoidCallback resetListener) {
    this._startListener = startListener;
    this._stopListener = stopListener;
    this._successListener = successListener;
    this._errorListener = errorListener;
    this._resetListener = resetListener;
  }

  start() {
    _startListener();
  }

  stop() {
    _stopListener();
  }

  success() {
    _successListener();
  }

  error() {
    _errorListener();
  }

  reset() {
    _resetListener();
  }
}
