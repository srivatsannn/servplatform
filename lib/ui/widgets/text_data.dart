import 'package:flutter/material.dart';
class TextData extends StatelessWidget {
  final String content;
  final Color textColor;
  final double size;
  final FontWeight weight;
  TextData({
    @required this.content,
    @required this.textColor: Colors.black,
    @required this.size: 10.0,
    this.weight
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        color: textColor,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
