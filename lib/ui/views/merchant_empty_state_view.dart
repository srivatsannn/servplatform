import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:servplatform/core/repositories/stories_repository/stories_repository.dart';
import 'package:servplatform/ui/widgets/search_field.dart';
import '../widgets/custom_app_bar.dart';
import 'package:servplatform/ui/shared/themes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';
import 'package:servplatform/ui/shared/themes.dart';

class MerchantStateEmptyView extends StatelessWidget {
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
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Merchant',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 30.0,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  'Have a bussiness or service offering Idea?'
                  '\nAdd a service to get started',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w400,
                  ),
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

// ignore: must_be_immutable
class AddAServiceMerchantView extends StatefulWidget {
  @override
  _AddAServiceMerchantViewState createState() =>
      _AddAServiceMerchantViewState();
}

class _AddAServiceMerchantViewState extends State<AddAServiceMerchantView> {
  String dropdownValue = '/item';

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
                'Add a Service',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 31.0,
                ),
              ),
              Text(
                'It takes two simple steps! It is really that easy!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.5,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Salon Service or Walk a dog',
                    border: OutlineInputBorder()),
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
                    hintText: 'Category', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Category', border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.black),
                    underline: Container(
                      height: 2,
                      color: Colors.black12,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['/item', '/hour', '/km', '/minute']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                '+ Add multiple services instead?',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Service Type',
                    style: textTheme.title,
                  ),
                  Text(
                    'Learn More',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              Text(
                'Help us set up the template apopriately',
                style: textTheme.caption,
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.card_travel,
                        size: 88.0,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Pick-Up and Delivery',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.5,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '(Ex. Food Delivery, Courier delivery, Fleet Management, etc)',
                            style: textTheme.caption,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: null,
                            onChanged: (int value) {},
                          ),
                          Text(
                            'Suggested',
                            style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.contact_phone,
                        size: 75.0,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Home-Service/Appointment',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.5,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '(Ex. Salon At Home, Home Cleaning, Dog Walker, etc)',
                            style: textTheme.caption,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: null,
                            onChanged: (int value) {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              Text(
                'Next Up: Create story to describe your service',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(width: 100),
                        Expanded(
                          child: RaisedButton(
                            color: Colors.blue,
                            textColor: Colors.white,
                            padding: EdgeInsets.all(8.0),
                            splashColor: Colors.blueAccent,
                            onPressed: (
                                //Opens a slide up panel

                                ) {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Next'),
                                Icon(Icons.arrow_forward),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 100),
                      ],
                    ),
                  ],
                ),
              ),
              StoryView(),
            ],
          ),
        ),
      ),
    );
  }
}

class StoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Add Story ',
            style: textTheme.title,
          ),
          Text(
            'Explain what does your service do by creating a story',
            style: textTheme.caption,
          ),
          SizedBox(
            height: 40.0,
          ),
          CircleImages(),
          SizedBox(
            height: 40.0,
          ),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 100),
                    Expanded(
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        onPressed: (
                            //Opens a slide up panel

                            ) {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.remove_red_eye),
                            Text('Preview'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 100),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Stories Container View
class CircleImages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CircleWidgets();
  }
}

class CircleWidgets extends State<CircleImages> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (var x = 0; x < 10; x++) {
      widgets.add(
        Container(
          height: 70.0,
          width: 60.0,
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(100, 0, 0, 0),
                  blurRadius: 5.0,
                  offset: Offset(5.0, 5.0))
            ],
            border: Border.all(
              width: 3.5,
              style: BorderStyle.solid,
              color: Colors.blue /*Color.fromARGB(0, 0, 255, 0)*/,
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://cdn.dribbble.com/users/1368/screenshots/1785863/icons_2x.png"),
            ),
          ),
        ),
      );
    }
    return Container(
        height: 80.0,
        child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(5.0),
            children: widgets));
  }
}

Widget _scrollingList(ScrollController sc) {
  return AddAServiceMerchantView();
}
