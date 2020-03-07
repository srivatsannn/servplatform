import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/location_input_view_model.dart';
import 'package:servplatform/core/view_models/order_view_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'chat_view.dart';

class AgentTaskPage extends StatefulWidget {
  @override
  _AgentTaskPageState createState() => _AgentTaskPageState();
}

class _AgentTaskPageState extends State<AgentTaskPage> {
  String _mapStyle;
  Uint8List markerIcond;
  bool _panelClosed = true;
  GoogleMapController mapController;

  final Set<Marker> _markers = {};
  Set<Circle> circles = Set.from([
    Circle(
      circleId: CircleId("circleUId"),
      fillColor: Colors.grey.withOpacity(0.8),
      center: LatLng(35.872780, -78.674098),
      strokeColor: Colors.transparent,
      radius: 140,
    )
  ]);
  BitmapDescriptor myIcon;
  final PageController _pageCtrl = new PageController(initialPage: 0);
  int currIndex = 0;

//  List<LocationResult> savedLocations;

  @override
  void initState() {
    super.initState();
    rootBundle.loadString('assets/mapstyle/order_map_style.txt').then((string) {
      _mapStyle = string;
    });

    setState(() {
      BitmapDescriptor.fromAssetImage(
              ImageConfiguration(size: Size(18, 13)), 'assets/images/car.png')
          .then((onValue) {
        myIcon = onValue;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;
    final bottomAppBarTheme = Theme.of(context).bottomAppBarTheme;
    final iconTheme = Theme.of(context).iconTheme;
    _addMarker();

    return ViewModelProvider<OrderViewModel>.withoutConsumer(
        builder: (context, model, child) => Scaffold(
              backgroundColor: Colors.white,
              floatingActionButton: Visibility(
                visible: !_panelClosed,
                child: FloatingActionButton(
                    onPressed: () {},
                    tooltip: 'Increment',
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(
                        Icons.call,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    )),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endDocked,
              bottomNavigationBar: _panelClosed
                  ? Container(
                      width: 0.0,
                      height: 0.0,
                    )
                  : BottomAppBar(
                notchMargin: 10.0,
                elevation: 30.0,
                      clipBehavior: Clip.antiAlias,
                      shape: CircularNotchedRectangle(),
                      child: Container(
                        margin: EdgeInsets.only(
                            right: 88.0, left: 28.0, top: 8.0, bottom: 8.0),
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
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  "Any note?",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18.0),
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
                    ),
              body: SlidingUpPanel(
                backdropEnabled: true,
                maxHeight: MediaQuery.of(context).size.height * .65,
//                minHeight: 0,
                onPanelClosed: () {
                  setState(() {
                    _panelClosed = true;
                  });
                },
                onPanelOpened: () {
                  setState(() {
                    _panelClosed = false;
                  });
                },
                controller: model.pc,
                parallaxEnabled: true,
                parallaxOffset: .5,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0)),
                panelBuilder: (ScrollController sc) => _panel(sc, context),
                body: Stack(
                  children: <Widget>[
                    Center(
                        child: Container(
                      child: GoogleMap(
                        onMapCreated: (GoogleMapController controller) {
                          mapController = controller;
                          mapController.setMapStyle(_mapStyle);
                        },
                        initialCameraPosition: CameraPosition(
                            target: LatLng(35.872780, -78.674098), zoom: 16.0),
                        myLocationButtonEnabled: true,
                        myLocationEnabled: true,
                        markers: _markers,
                        circles: circles,
                      ),
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100.0,
                      child: AppBar(
                        backgroundColor: Colors.transparent,
                        leading: Image.asset("assets/images/back_arrow.png"),
                        elevation: 0.0,
                        actions: <Widget>[
                          Image.asset("assets/images/share.png"),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 44.0),
                      alignment: Alignment.topCenter,
                      child: PriceWidget(
                        price: "13",
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.40),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return ChatRider();
                              }));
                            },
                            child: SafeArea(
                              bottom: true,
                              right: true,
                              child: Container(
                                margin: EdgeInsets.only(right: 8.0),
                                child: Image.asset(
                                  "assets/images/Enabled.png",
                                  fit: BoxFit.cover,
                                  width: 65.0,
                                  height: 65.0,
                                ),
                              ),
                            ),
                          ),
                          SafeArea(
                            bottom: true,
                            right: true,
                            child: Container(
                              margin: EdgeInsets.only(right: 8.0),
                              child: Image.asset(
                                "assets/images/arrow_right.png",
                                fit: BoxFit.cover,
                                width: 65.0,
                                height: 65.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
        viewModel: OrderViewModel());
  }

  Widget _panel(ScrollController sc, BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: SlideUpPanelContent(),
    );
  }

  void _addMarker() {
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId("newMarker12"),
          position: LatLng(35.872780, -78.674098),
          infoWindow: InfoWindow(title: "Title", snippet: "Snippet comes here"),
          icon: BitmapDescriptor.defaultMarker));
    });
  }
}

class PriceWidget extends StatefulWidget {
  final String price;
  final Function() onPressed;

  const PriceWidget({Key key, this.price, this.onPressed}) : super(key: key);

  @override
  _PriceWidgetState createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: 150.0,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 4),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurRadius: 11, offset: Offset(3.0, 4.0))
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text("X",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 26,
                      fontWeight: FontWeight.bold)),
            ),
            Text("CANCEL",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                )),
          ],
        ),
      ),
    );
  }
}

class SlideUpPanelContent extends StatelessWidget {
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
                            center: Center(
                                child: Text(
                              " 44\nmin",
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black.withOpacity(0.6),
                                  fontWeight: FontWeight.w600),
                            )),
                            progressColor: Colors.black,
                          )),
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
                          margin: EdgeInsets.only(right: 12.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.edit,
                                  color: Colors.blue,
                                ),
                                Text("Edit",
                                    style: TextStyle(color: Colors.blue))
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 70,
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: ButtonTheme(
                  minWidth: width / 1.2,
                  height: height / 22,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Color(0xffdbdbdb),
                    textColor: Colors.white,
                    child: Text(
                      "KNOW MORE",
                      style: TextStyle(
                          fontSize: width / 25,
                          color: Colors.blueAccent.withOpacity(0.4),
                          letterSpacing: 0.45,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
//                        Navigator.push(context,
//                            MaterialPageRoute(builder: (context) => mapshow()));
                    },
                  ),
                ),
              ),
              SizedBox(
                height: height / 70,
              ),
              SizedBox(
                height: height / 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      'MERCHANT',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: height / 60,
                          letterSpacing: 0.7,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListTile(
                    trailing: Image.asset("assets/images/profile.png"),
                    title: Text("Urban Clap"),
                    subtitle: Text("Black Suv"),
                  ),
                ],
              ),
              SizedBox(
                height: height / 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Card(
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
                            margin: EdgeInsets.only(right: 16.0),
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
                                margin: EdgeInsets.only(right: 16.0),
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
