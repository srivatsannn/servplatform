import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:servplatform/core/repositories/stories_repository/stories_repository.dart';
import 'package:servplatform/ui/widgets/search_field.dart';
import '../widgets/custom_app_bar.dart';
import 'package:servplatform/ui/shared/themes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';
import 'package:servplatform/ui/shared/themes.dart';
import 'camera_view_story.dart';
import 'cameraStories/widgets/thumbnail_widget.dart';

class Merchant2StateEmptyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18.0),
          topRight: Radius.circular(18.0),
        ),
        backdropEnabled: true,
        minHeight: 30,
        panelBuilder: (ScrollController sc) => _scrollingList(sc),
        body: Center(
          child: MainMerchantView(),
        ),
      ),
    );
  }
}

class MainMerchantView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Merchant',
              style: textTheme.display1.copyWith(color: Colors.black)),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    'Have a bussiness or service offering Idea? \n'
                    'Add a service to get started',
                    style: textTheme.headline),
                Text(
                  'Free to get Started. Pay as you Go Pricing. \n'
                  'No Credit Card Required',
                  style: textTheme.subtitle.copyWith(color: Colors.grey),
                ),
                Container(
                  padding: EdgeInsets.only(left: 250.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Learn More',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 85),
                    Expanded(
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue)),
                        onPressed: (
                            //Opens a slide up panel

                            ) {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.add),
                            Text('ADD A SERVICE'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 85),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 280.0),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.menu,
                      ),
                      Text(
                        'More',
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*Widget _getThumbnail() {
  return ThumbnailWidget(
    imagePath: imagePath,
    size: 36.0,
  );
}*/

class AddYourAgency extends StatefulWidget {
  @override
  _AddYourAgencyState createState() => _AddYourAgencyState();
}

class _AddYourAgencyState extends State<AddYourAgency> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Add Your Agency',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 31.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Name', border: OutlineInputBorder()),
              ),
              Container(
                padding: EdgeInsets.only(left: 350),
                child: Text(
                  '0/20',
                  style: TextStyle(
                    fontSize: 13.5,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Agency Description',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'Logo',
                style: textTheme.title,
              ),
              Text(
                'Help Establish your brand',
                style: textTheme.caption,
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            style: BorderStyle.solid, color: Colors.grey),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            style: BorderStyle.solid, color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            style: BorderStyle.solid, color: Colors.grey),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            style: BorderStyle.solid, color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _scrollingList(ScrollController sc) {
  return AddYourAgency();
}
