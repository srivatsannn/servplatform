import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        //heading container for BottomSheet

        Container(
          // height: height / 7,
          width: width / 1.03,
          color: Colors.transparent,
          child: Card(
            elevation: 0.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    height: 8,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(40.0)),
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 0, left: 12),
                          child: Text(
                            "EXPECTED COMPLETION",
                            style: TextStyle(
                                fontSize: height / 70,
                                color: Color(0xff66635b)),
                          ),
                        ),
                        SizedBox(
                          height: height / 110,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, left: 12),
                          child: Text(
                            "11:40 PM",
                            style: TextStyle(
                                fontSize: height / 45, letterSpacing: 0.9),
                          ),
                        ),
                      ],
                    ),
                    SafeArea(
                      bottom: true,
                      right: true,
                      child: Container(
                          margin: EdgeInsets.only(right: 8.0),
                          child: CircularPercentIndicator(
                            radius: 45.0,
                            lineWidth: 7.0,
                            percent: 0.7,
                            center: Center(child: Text(" 44\nmin",style: TextStyle(fontSize: 10.0,color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.w600),)),
                            progressColor: Colors.black,
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        //Body container for BottomSheet
        Container(
          margin: EdgeInsets.only(left: 12.0),
          height: height / 2,
          width: width / 1.03,
          color: Colors.transparent,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              SizedBox(
                height: height / 70,
              ),
              Card(
                elevation: 0.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 0, left: 12),
                          child: Text(
                            "STATUS",
                            style: TextStyle(
                                fontSize: height / 70,
                                color: Color(0xff66635b)),
                          ),
                        ),
                        SizedBox(
                          height: height / 110,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0, left: 12),
                          child: Text(
                            "Agent is on his way",
                            style: TextStyle(
                                fontSize: height / 45, letterSpacing: 0.9),
                          ),
                        ),
                      ],
                    ),
                    SafeArea(
                      bottom: true,
                      right: true,
                      child: Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child: Image.asset(
                          "assets/images/Enabled.png",
                          fit: BoxFit.cover,
                          width: 55.0,
                          height: 55.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 70,
              ),
              Card(
                elevation: 0.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Agent Assigned",
                            style: TextStyle(
                                fontSize: height / 60,
                                color: Color(0xff66635b).withAlpha(150),
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2),
                          ),
                          SizedBox(
                            height: height / 110,
                          ),
                          Text(
                            "Ramesh",
                            style: TextStyle(
                                fontSize: height / 40, letterSpacing: 0.9),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Text(
                                  "4.8",
                                  style: TextStyle(
                                      color: Color(0xff018786),
                                      fontWeight: FontWeight.w500,
                                      fontSize: height / 55),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 4.0, left: 4.0),
                                child: Image.asset(
                                  "assets/images/star.png",
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SafeArea(
                      bottom: true,
                      right: true,
                      child: Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child: Image.asset(
                          "assets/images/Oval.png",
                          fit: BoxFit.cover,
                          width: 55.0,
                          height: 55.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(8.0),
                    width: width * 0.7,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            "assets/images/hand.png",

                            width: 30.0,
                            height: 30.0,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: Icon(
                              FontAwesomeIcons.camera,
                              color: Colors.grey,
                              size: 25.0,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Text(
                              "Any note?",
                              style: TextStyle(color: Colors.grey,fontSize: 18.0),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.microphone,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/images/call.png",
                    fit: BoxFit.cover,
                  )
                ],
              ),
              SizedBox(
                height: height / 100,
              ),
              Card(
                elevation: 0.0,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: height / 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ORDER SUMMARY',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: height / 60,
                                    letterSpacing: 0.7,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 4.0, bottom: 4.0),
                              child: Text(
                                'Hair Cut & Shave',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height / 45,
                                ),
                              ),
                            ),
                            Text(
                              'Designer Haircut...',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.65),
                                  fontWeight: FontWeight.w500,
                                  fontSize: height / 60),
                            ),
                            Text(
                              'Special Shae',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.65),
                                  fontWeight: FontWeight.w500,
                                  fontSize: height / 60),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width / 7,
                        ),
                        Container(
                          height: height / 30,
                          margin: EdgeInsets.only(right: 16.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff00696B).withOpacity(0.86),
                                  borderRadius: BorderRadius.only(
                                      topLeft: const Radius.circular(100.0),
                                      topRight: const Radius.circular(100.0),
                                      bottomLeft: const Radius.circular(100.0),
                                      bottomRight:
                                      const Radius.circular(100.0))),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "1x",
                                    style: TextStyle(
                                        fontSize: height / 80,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height / 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 4.0, bottom: 4.0),
                              child: Text(
                                'Facial',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height / 45,
                                ),
                              ),
                            ),
                            Text(
                              'Special facial',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.65),
                                  fontWeight: FontWeight.w500,
                                  fontSize: height / 60),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width / 7,
                        ),
                        Container(
                          height: height / 30,
                          child: Container(
                              margin: EdgeInsets.only(right: 16.0),
                              decoration: BoxDecoration(
                                  color: Color(0xff00696B).withOpacity(0.86),
                                  borderRadius: BorderRadius.only(
                                      topLeft: const Radius.circular(100.0),
                                      topRight: const Radius.circular(100.0),
                                      bottomLeft: const Radius.circular(100.0),
                                      bottomRight:
                                      const Radius.circular(100.0))),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "1x",
                                    style: TextStyle(
                                        fontSize: height / 80,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height / 50,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'LOCATION INFORMATION',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: height / 60,
                            letterSpacing: 0.7,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: height / 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '67, Albion PI',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 45,
                          ),
                        ),
                        SizedBox(
                          width: width / 7,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16.0),
                          child: Image.asset(
                            "assets/images/map_icon.png",
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'B Block, Sector 63',
                        style: TextStyle(
                            color: Colors.grey, fontSize: height / 48),
                      ),
                    ),
                    SizedBox(
                      height: height / 30,
                    ),
                    ButtonTheme(
                      minWidth: width / 1.2,
                      height: height / 22,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        color: Color(0xffdbdbdb),
                        textColor: Colors.white,
                        child: Text(
                          "CANCEL",
                          style: TextStyle(
                              fontSize: width / 25,
                              color: Colors.red.withOpacity(0.7),
                              letterSpacing: 0.45),
                        ),
                        onPressed: () {
//                        Navigator.push(context,
//                            MaterialPageRoute(builder: (context) => mapshow()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: height / 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'ads',
                          style: TextStyle(
                              color: Colors.grey, fontSize: height / 70),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 30,
                    ),
                    Container(
                      height: 250.0,
                      width: width,
                      margin: EdgeInsets.only(left: 8.0, right: 8.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/blank.png"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: height / 30,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'UrbanClap provider will come to your home',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
