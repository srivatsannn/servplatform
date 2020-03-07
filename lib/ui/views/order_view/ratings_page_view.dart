import 'package:flutter/material.dart';
import 'package:servplatform/core/constant/statics.dart';
import 'package:servplatform/ui/widgets/check_box.dart';
import 'package:servplatform/ui/widgets/rating_star.dart';
import 'package:servplatform/ui/widgets/text_data.dart';

class StarDisplay extends StatefulWidget {
  @override
  _StarDisplayState createState() => _StarDisplayState();
}

class _StarDisplayState extends State<StarDisplay> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              TextData(
                content: 'Please provide Ratings and Reviews  ',
                textColor: Colors.black,
                size: 40.0,
                weight: FontWeight.w400,
              ),
              SizedBox(
                height: 20,
              ),
              TextData(
                  content: 'This helps us improve the experience for everyone',
                  textColor: Colors.black54,
                  size: 15.0),
              SizedBox(
                height: 50.0,
              ),
              RatingStar(),
              _setUpdate(),
              if (rating != 0.0)
                TextData(
                    content: 'Give a Complement?',
                    textColor: Colors.black,
                    size: 22.0),
              SizedBox(
                height: 50.0,
              ),
              if (rating != 0.0) DrawCheckBoxes('Excellent Service', val1),
              if (rating != 0.0) DrawCheckBoxes('Punctual', val2),
              if (rating != 0.0) DrawCheckBoxes('Value for Money', val3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _setUpdate() {
    setState(() {});
    return SizedBox(
      height: 10.0,
    );
  }
}
