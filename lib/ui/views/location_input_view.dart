import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/location_input_view_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/services.dart' show rootBundle;

class LocationInputPage extends StatefulWidget {
  @override
  _LocationInputPageState createState() => _LocationInputPageState();
}

class _LocationInputPageState extends State<LocationInputPage> {
  String _mapStyle;

  GoogleMapController mapController;
  LocationResult _pickedLocation;

//  List<LocationResult> savedLocations;

  @override
  void initState() {
    super.initState();
    rootBundle.loadString('assets/mapstyle/map_style.txt').then((string) {
      _mapStyle = string;
    });
  }

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;
    final bottomAppBarTheme = Theme.of(context).bottomAppBarTheme;
    final iconTheme = Theme.of(context).iconTheme;

    return ViewModelProvider<LocationInputViewModel>.withoutConsumer(
        builder: (context, model, child) => Scaffold(
              bottomNavigationBar: BottomAppBar(
                elevation: bottomAppBarTheme.elevation,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    //Text('More', style: textTheme.caption),
                    _MenuIcontButton(),
                  ],
                ),
              ),
              body: SlidingUpPanel(
                backdropEnabled: true,
                maxHeight: MediaQuery.of(context).size.height * .65,
                minHeight: 0,
                controller: model.pc,
                parallaxEnabled: true,
                parallaxOffset: .5,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0)),
                panelBuilder: (ScrollController sc) => _panel(sc, context),
                body: Center(
                    child: Container(
                  child: GoogleMap(
                    onMapCreated: (GoogleMapController controller) {
                      mapController = controller;
                      mapController.setMapStyle(_mapStyle);
                    },
                    initialCameraPosition: CameraPosition(
                        target: LatLng(40.7128, -74.0660), zoom: 15.0),
                    myLocationButtonEnabled: true,
                    myLocationEnabled: true,
                  ),
                )),
              ),
            ),
        viewModel: LocationInputViewModel());
  }

  Widget _panel(ScrollController sc, BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        controller: sc,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Container(
              margin: EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: GestureDetector(
                onTap: () async {
                  LocationResult result = await showLocationPicker(
                    context,
                    "AIzaSyAlrc5b-VjCPInr15dOmyM-O2cnVXtdUFk",
                    initialCenter: LatLng(31.1975844, 29.9598339),
                    automaticallyAnimateToCurrentLocation: true,
                    mapStylePath: _mapStyle,
                    myLocationButtonEnabled: false,
                    layersButtonEnabled: false,
                    hintText: "Enter Your Location",
                  );
                  print("result = $result");
                  setState(() => _pickedLocation = result);
//                  savedLocations.add(_pickedLocation);
                },
                child: Text(
                  "Enter Your Location ",
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.start,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.star_border,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              title: Text("Saved"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.gps_fixed,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              title: Text("Your Location"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.gps_fixed,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              title: Text("Choose on map"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40.0, top: 16.0),
            child: Text(
              "PREVIOUS SEARCHES",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 11.0,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              title: Text("Mumbai,India"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.access_time,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              title: Text("London,UK"),
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuIcontButton extends ProviderWidget<LocationInputViewModel> {
  @override
  Widget build(BuildContext context, LocationInputViewModel model) {
    final local = AppLocalizations.of(context);

    return LiveIconButton.externalState(
      icon: AnimatedIcons.menu_close,
      iconState: !model.pc.isPanelClosed ? IconState.first : IconState.second,
      onPressed: () {
        model.onTapMenu(context);
      },
    );
  }
}
