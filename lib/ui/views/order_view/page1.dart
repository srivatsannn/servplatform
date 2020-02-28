import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
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
                            "Waiting for provider to accept...",
                            style: TextStyle(fontSize: height / 45),
                          ),
                        ),
                      ],
                    ),
                    SafeArea(
                      bottom: true,
                      right: true,
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.fast_forward,
                            color: Colors.grey,
                            size: 28.0,
                          ),
                          Text(
                            "Steps",
                            style: TextStyle(
                                fontSize: height / 60,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
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
              Card(
                elevation: 0.0,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: height / 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      //first row of body container
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Align(
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
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
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
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff00696B).withOpacity(0.86),
                                    borderRadius: BorderRadius.only(
                                        topLeft: const Radius.circular(100.0),
                                        topRight: const Radius.circular(100.0),
                                        bottomLeft:
                                            const Radius.circular(100.0),
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
                    ),
                    SizedBox(
                      height: height / 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      //first row of body container
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
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
                                decoration: BoxDecoration(
                                    color: Color(0xff00696B).withOpacity(0.86),
                                    borderRadius: BorderRadius.only(
                                        topLeft: const Radius.circular(100.0),
                                        topRight: const Radius.circular(100.0),
                                        bottomLeft:
                                            const Radius.circular(100.0),
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
                    ),
                    SizedBox(
                      height: height / 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Align(
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
                    ),
                    SizedBox(
                      height: height / 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),

                      //3rd row of body container
                      child: Row(
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
                          Image.asset(
                            "assets/images/map_icon.png",
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'B Block, Sector 63',
                          style: TextStyle(
                              color: Colors.grey, fontSize: height / 48),
                        ),
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
