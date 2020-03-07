import 'package:flutter/material.dart';
import 'package:servplatform/core/constant/statics.dart';
import 'package:servplatform/ui/widgets/text_data.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RatingStar extends StatefulWidget {
  @override
  _RatingStarState createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  List<String> reviewType = [
    ' ',
    'OK, but had an issue',
    'OK, but had an issue',
    'OK, but had an issue',
    'OK, but had an issue',
    'Excellent',
  ];
  bool val1= false;
  bool val2= false;
  bool val3= false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SmoothStarRating(
            allowHalfRating: true,
            onRatingChanged: (v) {
              rating = v;
              displayReview = reviewType[v.toInt()];
              setState(() {
                print(displayReview);
              });
            },
            starCount: 5,
            rating: rating,
            size: 40.0,
            filledIconData: Icons.star,
            halfFilledIconData: Icons.star_half,
            color: Colors.black,
            borderColor: Colors.black,
            spacing: 0.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: TextData(
              content: displayReview,
              textColor: Colors.blue,
              size: 22.0,
              weight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
