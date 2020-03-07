import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';

import 'package:auto_animated/auto_animated.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/agent_home_view_model.dart';
import 'package:servplatform/core/view_models/location_input_view_model.dart';
import 'package:servplatform/core/view_models/order_view_model.dart';
import 'package:servplatform/ui/views/agent_task_view.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/services.dart' show rootBundle;

class AgentHome extends StatefulWidget {
  @override
  _AgentHomeState createState() => _AgentHomeState();
}

class _AgentHomeState extends State<AgentHome> {
  String _mapStyle;
  Uint8List markerIcond;
  bool showTripsCards = false;

  GoogleMapController mapController;
  LocationResult _pickedLocation;
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

    return ViewModelProvider<AgentHomeViewModel>.withoutConsumer(
        builder: (context, model, child) => Scaffold(
              backgroundColor: Colors.transparent,
              body: SlidingUpPanel(
                backdropEnabled: true,
                maxHeight: MediaQuery.of(context).size.height * .65,
//                minHeight: 0,
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
                    Positioned(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Stack(
                          children: <Widget>[
                            Visibility(
                              visible: showTripsCards,
                              child: Container(
                                margin: EdgeInsets.only(top: 40),
                                child: CarouselSlider(
                                  height: 300.0,
                                  items: [1, 2, 3, 4, 5].map((i) {
                                    return Builder(
                                      builder: (BuildContext context) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              showTripsCards = false;
                                            });
                                          },
                                          child: Card(
                                            elevation: 4.0,
                                            child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 5.0),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      top: 16.0, left: 24.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: <Widget>[
                                                      Row(
                                                        children: <Widget>[
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 8.0),
                                                            child: IconButton(
                                                              icon: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                              onPressed: () {},
                                                            ),
                                                          ),
                                                          PriceWidget(
                                                            price: "6.99",
                                                            onPressed: () {},
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Text(
                                                          "Last Week",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Text(
                                                        "8 Trips Completed",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 24.0),
                                                      ),
                                                      ButtonTheme(
                                                        minWidth: 80.0,
                                                        height: 50.0,
                                                        child: FlatButton(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        48.0),
                                                          ),
                                                          color: Colors.blue,
                                                          textColor:
                                                              Colors.blue,
                                                          child: Center(
                                                            child: Text(
                                                              "VIEW SUMMARY",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ),
                                                          onPressed: () {},
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                          ),
                                        );
                                      },
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: !showTripsCards,
                              child: Container(
                                margin: EdgeInsets.only(top: 60),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        FunctionalButton(
                                          icon: Icons.search,
                                          title: "",
                                          onPressed: () {},
                                        ),
                                        PriceWidget(
                                          price: "6.99",
                                          onPressed: () {
                                            setState(() {
                                              showTripsCards = true;
                                            });
                                          },
                                        ),
                                        ProfileWidget(
                                          onPressed: () => Navigator.pushNamed(
                                              context, '/notifications'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 120),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              FunctionalButton(
                                icon: Icons.security,
                                title: "",
                                onPressed: () {},
                              ),
                              GoButton(
                                title: "GO",
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return AgentTaskPage();
                                  }));
                                },
                              ),
                              Container(
                                width: 50,
                                height: 50,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
        viewModel: AgentHomeViewModel());
  }

  Widget _panel(ScrollController sc, BuildContext context) {
    return MediaQuery.removePadding(
        context: context, removeTop: true, child: SlideMenuPanelView());
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

class SlideMenuPanelView extends StatefulWidget {
  @override
  _SlideMenuPanelViewState createState() => _SlideMenuPanelViewState();
}

class _SlideMenuPanelViewState extends State<SlideMenuPanelView> {
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
                            "You are Offline",
                            style: TextStyle(fontSize: height / 45),
                          ),
                        ),
                      ],
                    ),
                    SafeArea(
                      bottom: true,
                      right: true,
                      child: Container(child: _MenuIcontButton()),
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
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'PROMOTIONS (2)',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: height / 60,
                              letterSpacing: 0.7,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 80,
                    ),
                    getPromotionCard(),
                    SizedBox(
                      height: height / 80,
                    ),
                    getPromotionCard(),
                    SizedBox(
                      height: height / 80,
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
                          "SEE MORE",
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
                    SizedBox(
                      height: height / 80,
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 12.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(
                                'TASK QUEUE (3)',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: height / 60,
                                    letterSpacing: 0.7,
                                    fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Text(
                                  r'400$ : Potential Earnings',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height / 45,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //--------------CARD----------------------------------
                    getTaskCard(),
                    //------------CARD ENDS

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

  //PROMOTION CARD
  Widget getPromotionCard() {
    return Card(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 0.6),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: Image.asset("assets/images/profile.png"),
        title: Text("Complete 5 trips"),
        subtitle: Text(r"Earn 5$ bonus"),
        trailing: SafeArea(
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
      ),
    );
  }

  //TASK CARD
  Widget getTaskCard() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.all(4.0),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 0.6),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'MERCHANT',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: height / 60,
                              letterSpacing: 0.7,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                        child: Text(
                          'UrbanClap',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 45,
                          ),
                        ),
                      ),
                      Text(
                        'Salon at home',
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
                    margin: EdgeInsets.only(top: 8.0),
                    child: Image.asset("assets/images/profile.png"),
                  )
                ],
              ),
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
                        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
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
                                bottomLeft: const Radius.circular(100.0),
                                bottomRight: const Radius.circular(100.0))),
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
                        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
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
                                bottomLeft: const Radius.circular(100.0),
                                bottomRight: const Radius.circular(100.0))),
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
                  style: TextStyle(color: Colors.grey, fontSize: height / 48),
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
                  borderRadius: BorderRadius.circular(48.0),
                ),
                color: Colors.blue,
                textColor: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "  3  ",
                            style: TextStyle(
                                backgroundColor: Colors.white,
                                color: Colors.blue,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Text(
                          "Items",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            r"40 $",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "Total",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.offline_bolt,
                                color: Colors.white,
                              ),
                              Text(
                                "START NOW",
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Fri,Jul 26 at 1:05 PM-1:15 PM",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
                onPressed: () {
//                        Navigator.push(context,
//                            MaterialPageRoute(builder: (context) => mapshow()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuIcontButton extends ProviderWidget<AgentHomeViewModel> {
  @override
  Widget build(BuildContext context, AgentHomeViewModel model) {
    final local = AppLocalizations.of(context);

    return LiveIconButton.externalState(
      icon: AnimatedIcons.close_menu,
      iconState: !model.pc.isPanelClosed ? IconState.first : IconState.second,
      onPressed: () {
        model.onTapMenu(context);
      },
    );
  }
}

//SEARCH BUTTON
class FunctionalButton extends StatefulWidget {
  final String title;
  final IconData icon;
  final Function() onPressed;

  const FunctionalButton({Key key, this.title, this.icon, this.onPressed})
      : super(key: key);

  @override
  _FunctionalButtonState createState() => _FunctionalButtonState();
}

class _FunctionalButtonState extends State<FunctionalButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RawMaterialButton(
          onPressed: widget.onPressed,
          splashColor: Colors.black,
          fillColor: Colors.white,
          elevation: 15.0,
          shape: CircleBorder(),
          child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Icon(
                widget.icon,
                size: 20.0,
                color: Colors.black,
              )),
        ),
      ],
    );
  }
}

class ProfileWidget extends StatefulWidget {
  final Function() onPressed;

  const ProfileWidget({Key key, this.onPressed}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 12.0),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 11,
                      offset: Offset(3.0, 4.0))
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(45.0),
                child: Image.asset(
                  "assets/images/profile.png",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 18.0,
              bottom: 22.0,
              child: Container(
                width: 28.0,
                height: 28.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff018786),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 2,
                        offset: Offset(1.0, 1.0))
                  ],
                ),
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ));
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
        margin: EdgeInsets.only(right: 26.0),
        width: 100,
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
            Text("\$",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                )),
            Text(widget.price,
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

class GoButton extends StatefulWidget {
  final String title;
  final Function() onPressed;

  const GoButton({Key key, this.title, this.onPressed}) : super(key: key);

  @override
  _GoButtonState createState() => _GoButtonState();
}

class _GoButtonState extends State<GoButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 8),
                shape: BoxShape.circle),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                shape: BoxShape.circle,
              ),
              child: RawMaterialButton(
                onPressed: widget.onPressed,
                splashColor: Colors.black,
                fillColor: Colors.blue,
                elevation: 15.0,
                shape: CircleBorder(),
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(widget.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
