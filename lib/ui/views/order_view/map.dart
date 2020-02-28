//import 'package:flutter/material.dart';
//
//import 'package:google_maps/Ui/page1.dart';
//import 'package:google_maps/Ui/page2.dart';
//import 'package:google_maps/Ui/page3.dart';
//import 'package:google_maps/Ui/page4.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
//import 'package:sliding_up_panel/sliding_up_panel.dart';
//import 'dart:async';
//
//class mapshow extends StatefulWidget {
//  @override
//  _mapshowState createState() => _mapshowState();
//}
//
//class _mapshowState extends State<mapshow> {
//  GlobalKey<ExpandableBottomSheetState> key = new GlobalKey();
//
//
//  Completer<GoogleMapController> _controller = Completer();
//
//  GoogleMapController mapController;
//  final LatLng _center = const LatLng(45.521563, -122.677433);
//
//  void _onMapCreated(GoogleMapController controller) {
//    mapController = controller;
//  }
//
//
//
//  @override
//
//  Widget build(BuildContext context) {
//
//    double width = MediaQuery.of(context).size.width;
//    double height = MediaQuery.of(context).size.height;
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: Scaffold(
//
////        appBar: AppBar(
////          title: Text('Location'),
////          backgroundColor: Colors.green[700],
////        ),
//
//
//        body: SlidingUpPanel(
//
//          panel: PageViewDemo(),
//
//          //showing google map in background
//          body: GoogleMap(
//              onMapCreated: _onMapCreated,
//              initialCameraPosition: CameraPosition(
//                target: LatLng(30.767956, 72.437813),
//                zoom: 14.4746,
//              ),
//
//          ),
//
//
//
//
//        ),
//      ),
//    );
//  }
//
//
//  void expand() => key.currentState.expand();
//
//  ExpansionStatus status() => key.currentState.expansionStatus;
//}
//
//class PageViewDemo extends StatefulWidget {
//  @override
//  _PageViewDemoState createState() => _PageViewDemoState();
//}
//
//class _PageViewDemoState extends State<PageViewDemo> {
//
//  PageController _controller = PageController(
//    initialPage: 0,
//  );
//
//  @override
//  void dispose() {
//    _controller.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return PageView(
//      controller: _controller,
//      children: [
//
//        //calling bottomSheets
//        Page1(),
//        page2(),
//        page3(),
//        page4(),
//      ],
//    );
//  }
//}
//
//
//
//
//
//
//
//
