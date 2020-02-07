import 'package:flutter/material.dart';

class SliverMultilineAppBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget leading;
  final List<Widget> actions;

  SliverMultilineAppBar(
      {this.title, this.subtitle, this.leading, this.actions});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final textTheme = Theme.of(context).textTheme;

    double availableWidth = mediaQuery.size.width - 160;

    return SliverAppBar(
      expandedHeight: 200.0,
      backgroundColor: Colors.white,
      floating: true,
      leading: leading,
      actions: actions,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: leading == null?true:false,
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: availableWidth,
              ),
              child: Text(title, style: textTheme.title),
            ),
            Text(subtitle, style: textTheme.caption)
          ])),
    );
  }
}
