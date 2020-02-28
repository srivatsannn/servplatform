import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/location_input_view_model.dart';
import 'package:servplatform/core/view_models/order_view_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'order_view/page1.dart';
import 'order_view/page2.dart';
import 'order_view/page3.dart';
import 'order_view/page4.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  String _mapStyle;
  Uint8List markerIcond;

  GoogleMapController mapController;
  LocationResult _pickedLocation;
  final Set<Marker> _markers = {};
  Set<Circle> circles = Set.from([
    Circle(
      circleId: CircleId("circleUId"),
      fillColor: Colors.grey.withOpacity(0.8),
      center: LatLng(35.872780,-78.674098),
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
                            target: LatLng(35.872780,-78.674098), zoom: 16.0),
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
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: _pageCtrl,
        onPageChanged: (index) {
          setState(() {
            currIndex = index;
          });
        },
        children: <Widget>[Page1(), Page2(), Page3(), Page4()],
      ),
    );
  }

  void _addMarker() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId("newMarker12"),
        position:LatLng(35.872780,-78.674098),
        infoWindow: InfoWindow(title: "Title", snippet: "Snippet comes here"),
        icon: BitmapDescriptor.defaultMarker
      ));
    });
  }
}
