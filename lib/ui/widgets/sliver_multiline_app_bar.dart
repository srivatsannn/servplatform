import 'package:flutter/material.dart';

class SliverMultilineAppBar extends StatefulWidget {
  final String title;
  final String subtitle;
  final Widget leading;
  final List<Widget> actions;

  SliverMultilineAppBar(
      {this.title, this.subtitle, this.actions,this.leading});

  @override
  _SliverMultilineAppBarState createState() => _SliverMultilineAppBarState();
}

class _SliverMultilineAppBarState extends State<SliverMultilineAppBar> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final textTheme = Theme.of(context).textTheme;

    double availableWidth = mediaQuery.size.width - 160;

    return SliverAppBar(
      expandedHeight: 150.0,
      backgroundColor: Colors.white,
      floating: false,
      leading: widget.leading,
      actions: widget.actions,
      flexibleSpace: FlexibleSpaceBar(
      centerTitle: widget.leading == null?true:false,
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: availableWidth,
              ),
              child: Text(widget.title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            Text(widget.subtitle, style: TextStyle(color: Colors.black,))
          ])),
    );
  }
}
