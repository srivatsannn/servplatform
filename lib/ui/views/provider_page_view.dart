import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/provider_setup_view_model.dart';
import 'package:servplatform/ui/widgets/provider_home_list.dart';
import 'package:servplatform/ui/widgets/search_field.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProviderPageView extends StatefulWidget {
  static const Color transparent = Color(0x21111100);

  @override
  _ProviderPageViewState createState() => _ProviderPageViewState();
}

class _ProviderPageViewState extends State<ProviderPageView> {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;
    return ViewModelProvider<ProviderSetupViewModel>.withoutConsumer(
      viewModel: ProviderSetupViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => MaterialApp(
        theme: ThemeData.light(),
        home: Scaffold(
          body: SlidingUpPanel(
            //only the container contained inside are visible
            //renderPanelSheet: false,
            //setting this property will blur the background
            backdropEnabled: true,
            maxHeight: MediaQuery.of(context).size.height * .60,
            minHeight: 100,
            //controller: model.pc,
            parallaxEnabled: true,
            parallaxOffset: .5,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
            //widget to display in case of collapsed
            //collapsed: _floatingCollapsed(context),
            collapsed: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Center(
                  child: Column(
                children: <Widget>[
                  Text(
                    'Merchant: Swipe to learn More',
                    style: TextStyle(color: Colors.grey),
                  ),
                  ListTile(
                    title: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 6.0,
                          backgroundColor: Colors.green,
                        ),
                        SizedBox(width: 12.0),
                        Text('UrbanClap'),
                      ],
                    ),
                    subtitle: Text(
                      '98% Macth',
                      style: TextStyle(color: Colors.green),
                    ),
                    trailing: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        "https://png.pngtree.com/png-vector/20190521/ourlarge/pngtree-skull-demon-head-black-white-hand-drawing-vector-png-image_1043333.jpg",
                        height: 90.0,
                        width: 100.0,
                      ),
                    ),
                  ),
                ],
              )),
            ),
            // panel: _floatingPanel(context),
            panelBuilder: (ScrollController sc) => _floatingPanel(sc),
            body: Padding(
                padding: const EdgeInsets.all(5.0),
                child: NestedScrollView(
                    headerSliverBuilder:
                        (BuildContext context, bool innerBoxIsScrolled) {
                      return <Widget>[
                        DefaultTabController(
                          length: 3,
                          child: SliverAppBar(
                            expandedHeight: 200.0,
                            floating: false,
                            pinned: true,
                            forceElevated: true,
                            stretch: true,
                            leading: CircleAvatar(
                                radius: 20.0,
                                backgroundColor: ProviderPageView.transparent,
                                child: IconButton(
                                    icon: Icon(Icons.arrow_back,
                                        color: Colors.black),
                                    onPressed: () {})),
                            actions: <Widget>[
                              CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: ProviderPageView.transparent,
                                  child: IconButton(
                                      icon: Icon(Icons.bookmark,
                                          color: Colors.black),
                                      onPressed: () {})),
                              SizedBox(width: 8.0),
                              CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: ProviderPageView.transparent,
                                  child: IconButton(
                                      icon: Icon(Icons.share,
                                          color: Colors.black),
                                      onPressed: () {})),
                              SizedBox(width: 8.0),
                              CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: ProviderPageView.transparent,
                                  child: IconButton(
                                      icon: Icon(Icons.more_horiz,
                                          color: Colors.black),
                                      onPressed: () {})),
                            ],
                            flexibleSpace: FlexibleSpaceBar(
                              collapseMode: CollapseMode.parallax,
                              background: Container(
                                child: MapView(),
                              ),
                            ),
                          ),
                        ),
                      ];
                    },
                    body: CustomScrollView(slivers: <Widget>[
                      /* SliverList(
                        delegate: SliverChildListDelegate([MyWidget()]),
                      ),*/
                      SliverList(
                        delegate: SliverChildListDelegate([SearchField()]),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate([
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Save upto 40% . In High Demand',
                              style: TextStyle(color: Colors.green),
                            ),
                          )
                        ]),
                      ),
                      ProviderHomeList(),
                    ]))),
          ),
        ),
      ),
    );
  }

  Widget _floatingPanel(ScrollController sc) {
    return SingleChildScrollView(
      controller: sc,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        //margin: const EdgeInsets.all(24.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Salon at Home',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Row(
                          children: <Widget>[
                            Text('UrbanClap'),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8.0,
                            )
                          ],
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        "https://png.pngtree.com/png-vector/20190521/ourlarge/pngtree-skull-demon-head-black-white-hand-drawing-vector-png-image_1043333.jpg",
                        height: 90.0,
                        width: 100.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              ReadMoreText(
                  "Provides a ScrollController to attach to a scrollable object in the panel that links the panel position with the scroll position. Useful for implementing an infinite scroll behavior. If panel and panelBuilder are both non-null, panel will be used."
              ),
              SizedBox(height: 10.0),
              Text(
                'HIGHLIGHTS',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              FaceRecoText(),
              SizedBox(height: 10.0),
              Text(
                'Introduction',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              IntroList(),
              SizedBox(height: 10.0),
              Text(
                'Stories',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Stories(),
              SizedBox(height: 10.0),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Ratings & Reviews',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                      Text("5.0", style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                        Row(children: <Widget>[
                          Icon(Icons.star, size: 15,),
                          Icon(Icons.star, size: 15,),
                          Icon(Icons.star, size: 15,),
                          Icon(Icons.star, size: 15,),
                          Icon(Icons.star, size: 15,),
                        ],),
                        Row(children: <Widget>[
                          Icon(Icons.star, size: 15,),
                          Icon(Icons.star, size: 15,),
                          Icon(Icons.star, size: 15,),
                          Icon(Icons.star, size: 15,),
                        ],),
                        Row(children: <Widget>[
                          Icon(Icons.star, size: 15,),
                          Icon(Icons.star, size: 15,),
                          Icon(Icons.star, size: 15,),
                        ],),
                        Row(children: <Widget>[
                          Icon(Icons.star, size: 15,),
                          Icon(Icons.star, size: 15,),
                        ],),
                        Icon(Icons.star, size: 15,),
                      ],),
                      Container(
                        width: 200,
                        height: 100,
                        padding: EdgeInsets.all(16),
                        child: CustomPaint(
                          foregroundPainter: GraphPainter(),
                        ),
                      ),
                    ]),
                    Text('Out of 5', style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text('Relevant',  style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: Column(children: <Widget>[
                                  Text('Stunning.', style: TextStyle(fontSize:20.0, fontWeight: FontWeight.bold),),
                                  Text('\u2B50\u2B50\u2B50\u2B50\u2B50')
                                ]
                                ),
                                trailing: Column(children: <Widget>[
                                  Text('Wed'),
                                  Text('LaQuishaMane')
                                ],),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(8.0),
                                child: ReadMoreText('This game is absolutely wonderful. I had been waiting for more levels to be released for quite some time — so the fact that they released an entirely separate app made me so excited. The colors, story, and levels are both beautiful and challenging in a way that makes you not want to put your'),
                              )
                            ],
                          )
                      )
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class GraphPainter extends CustomPainter {
  Paint trackBarPaint = Paint()
    ..color = Colors.black45
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 12;

  Paint trackPaint = Paint()
    ..color = Colors.grey[300]
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 12;

  @override
  void paint(Canvas canvas, Size size) {
    Path trackPath = Path();
    Path trackBarPath = Path();

    List val = [
      size.height * 0.2,
      size.width * 0.5,
      size.width * 0.6,
      size.width * 0.8,
      size.width * 0.9,
    ];

    double origin = 1;

    for (int i = 0; i != val.length; i++) {
      trackBarPath.moveTo(size.width, origin);
      trackBarPath.lineTo(val[i], origin);
      trackPath.moveTo(size.width, origin);
      trackPath.lineTo(5, origin);
      origin = origin + size.height * 0.22;
    }
    canvas.drawPath(trackPath, trackPaint);

    canvas.drawPath(trackBarPath, trackBarPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int currTab = 0;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        //print("offset = ${_scrollController.offset}");
        currTab = (_scrollController.offset) ~/ (100 * 30);
        print(currTab);
        setState(() {});
      });
  }

  @override
  void dispose() {
    _scrollController
        .dispose(); // it is a good practice to dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            for (int i = 0; i < 3; i++)
              Container(
                  decoration: BoxDecoration(
                      color: i == currTab ? Colors.red : Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  width: 50,
                  child: Text(
                    "Tab " + i.toString(),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))
          ],
        ),
        ListView(
            /*controller: _scrollController,
          children: <Widget>[
            for (int i = 0; i < 100; i++)
              Container(
                  height: 30, child: Text("Conten at 0 -" + i.toString())),
            for (int i = 0; i < 100; i++)
              Container(
                  height: 30, child: Text("Conten at 1 -" + i.toString())),
            for (int i = 0; i < 100; i++)
              Container(
                  height: 30, child: Text("Conten at 2 -" + i.toString())),
          ],*/
            )
      ],
    );
  }
}

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  static const Color transparent = Color(0x21111100);
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        body: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        floatingActionButton: CircleAvatar(
          radius: 20.0,
          backgroundColor: transparent,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: _goToTheLake,
            child: Icon(
              Icons.send,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    try {
      final GoogleMapController controller = await _controller.future;
      await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
    } catch (e) {
      print(e);
    }
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // tested with 20 of these for scrolling
          Row(
            children: <Widget>[
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  ClipOval(
                      child: Image.network(
                    "https://www.refinery29.com/images/8981405.jpg?format=webp&width=340&height=408&quality=85",
                    fit: BoxFit.cover,
                    width: 90.0,
                    height: 90.0,
                  )),
                  Positioned(
                      bottom: 1.0,
                      right: 6.0,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.white),
                          width: 16.0,
                          child: Icon(Icons.add_box)))
                ],
              ),
              /*ClipOval(
                  child: Image.network(
                "https://www.refinery29.com/images/8981405.jpg?format=webp&width=340&height=408&quality=85",
                fit: BoxFit.cover,
                width: 90.0,
                height: 90.0,
              )),*/
              Expanded(
                child: SizedBox(
                  height: 100.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipOval(
                            child: Image.network(
                          "https://fsa.zobj.net/crop.php?r=B3oF39ZruoFSD67g8-ZgWmrgY2LIlwyLQin6z6uERXMlWMM3E6Z8NNO_LykyEOuRiWn4dDvr5zKeRDmjEcnpdmxa6hqYFBkuRNB67eyXRjbeBDaU-GHhxQbZmDMRQ72RiJgFl6Lnkfn7FBAd",
                          fit: BoxFit.cover,
                          width: 90.0,
                          height: 90.0,
                        )),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          // tested with 20 of these for scrolling
        ],
      ),
    );
  }
}

class IntroList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/images/introImage.jpg'),
            fit: BoxFit.cover,
            image: NetworkImage("https://wallpapercave.com/wp/wp3509358.jpg"),
          ),
          SizedBox(height: 10.0),
          Text('UrbanClap Provide Will Come to Your Home'),
          SizedBox(height: 10.0),
          FadeInImage(
            placeholder: AssetImage('assets/images/introImage.jpg'),
            fit: BoxFit.cover,
            image: NetworkImage("https://wallpapercave.com/wp/wp3509358.jpg"),
          ),
          SizedBox(height: 10.0),
          Text(
              'Get an exceptional service. The providers are trained professionals'),
          SizedBox(height: 10.0),
          FadeInImage(
            placeholder: AssetImage('assets/images/introImage.jpg'),
            fit: BoxFit.cover,
            image: NetworkImage("https://wallpapercave.com/wp/wp3509358.jpg"),
          ),
          SizedBox(height: 10.0),
          Text('We bring all equipment and clean up as well after the service'),
        ],
      ),
    );
  }
}

class FaceRecoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.tag_faces, color: Colors.blue),
            title: Text('Happiness guaranteed',
                style: TextStyle(color: Colors.blue)),
          ),
          SizedBox(height: 50.0),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('Subtitle 1'),
            subtitle: Text('body 2'),
          ),
          ListTile(
            leading: Icon(
              Icons.access_time,
            ),
            title: Text('Subtitle 1'),
            subtitle: Text('body 2'),
          ),
          ListTile(
            leading: Icon(
              Icons.access_time,
            ),
            title: Text('Subtitle 1'),
            subtitle: Text('body 2'),
          ),
        ],
      ),
    );
  }
}

class ReadMoreText extends StatefulWidget {
  final String descText;
  ReadMoreText(this.descText);
  @override
  _ReadMoreTextState createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {

  bool description = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.descText,
            maxLines: description ? 8 : 2,
            textAlign: TextAlign.center,
          ),
          InkWell(
            onTap: () {
              setState(() {
                description = !description;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                description
                    ? Text(
                        "Show Less",
                        style: TextStyle(color: Colors.blue),
                      )
                    : Text("Read More", style: TextStyle(color: Colors.blue))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
