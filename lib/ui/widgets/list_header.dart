import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  final String title;
    final String subtitle;
  final List<Widget> actions;


  ListHeader({this.title,this.subtitle,  this.actions});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
       Text(title,style: textTheme.headline),

        Text(subtitle, style: textTheme.caption)
    ]);
  }
}
