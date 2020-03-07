import 'package:flutter/material.dart';
import 'package:servplatform/ui/widgets/text_data.dart';
class DrawCheckBoxes extends StatefulWidget {
  String text;
  bool val;
  DrawCheckBoxes(this.text,this.val);
  @override
  _DrawCheckBoxesState createState() => _DrawCheckBoxesState();
}

class _DrawCheckBoxesState extends State<DrawCheckBoxes> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            flex: 1,
            child: TextData(
              content: widget.text,
              textColor: Colors.black,
              size: 18.0,
            )),
        Expanded(
          flex: 1,
          child: Checkbox(
            onChanged: (bool value) {
              setState(() {
                widget.val = value;
                print(widget.val);
              });
            },
            value: widget.val,
            activeColor: Colors.teal,
            focusColor: Colors.teal,
          ),
        ),
      ],
    );
  }

}
