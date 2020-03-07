import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:loading/loading.dart';
import 'package:servplatform/core/constant/animations.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Center(
        child: Loading(
            indicator: BallPulseIndicator(), size: 100.0, color: Colors.pink),
      ),
    );
  }
}
