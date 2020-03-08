import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/provider_setup_view_model.dart';

class Section {
  GlobalKey<State<StatefulWidget>> globalKey;
  String text;

  Section({this.globalKey, this.text});
}

class ProviderPageView extends StatefulWidget {
  @override
  _ProviderPageViewState createState() => _ProviderPageViewState();
}

class _ProviderPageViewState extends State<ProviderPageView> {
  var services = ["Haircut & Shave", "Shave", "Facial"];

  @override
  Widget build(BuildContext context) {
    final forYou = GlobalKey();
    final barb = GlobalKey();
    final cleanUp = GlobalKey();

    List<Section> sections = [
      Section(globalKey: forYou, text: "For You"),
      Section(globalKey: barb, text: "Barber"),
      Section(globalKey: cleanUp, text: "Cleanup"),
    ];

    final local = AppLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;
    int a = 1;
    int b = 1;
    int c = 1;
    int d = 1;
    int e = 1;
    int f = 1;
    int g = 1;
    int h = 1;
    int i = 1;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return ViewModelProvider<ProviderSetupViewModel>.withoutConsumer(
      viewModel: ProviderSetupViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Select Services',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: <Widget>[
            SizedBox(width: width * 0.01),
            GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.bookmark,
                  color: Colors.grey,
                  size: 26.0,
                )),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.share,
                color: Colors.grey,
                size: 26.0,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              getSectionRows(sections, height, width),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.93,

                  // color: Colors.red,
                  child: Text(
                    "For You",
                    key: forYou,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              getServicesRows(height, width),

              //Text("Barbering",textAlign: TextAlign.start,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.93,

                  // color: Colors.red,
                  child: Text(
                    "Barbaring",
                    key: barb,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.03,
              ),

              getServicesRows(height, width),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.93,

                  // color: Colors.red,
                  child: Text(
                    "Clean up",
                    key: cleanUp,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.03,
              ),

              getServicesRows(height, width),
            ],
          ),
        ),
      ),
    );
  }

  Widget getServicesRows(double height, double width) {
    return Container(
      child: ListView.builder(
        itemCount: services.length,
        itemBuilder: (BuildContext context, int index) {
          return serviceRow(height, width, services[index]);
        },
      ),
    );
  }

  Widget getSectionRows(List<Section> sections, double height, double width) {
    return Container(
      child: ListView.builder(
        itemCount: sections.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return sectionRow(
              height, width, sections[index].globalKey, sections[index].text);
        },
      ),
    );
  }

  Widget serviceRow(double height, double width, String text) {
    return Container(
      width: width * 0.95,
      height: height * 0.14,
      //color: Colors.blue,

      child: Row(
        children: <Widget>[
          Container(
            width: width * 0.20,
            height: height * 0.10,
            color: Colors.grey[300],
            child: IconButton(
                icon: Icon(
                  Icons.forum,
                  color: Colors.grey[800],
                  size: 30,
                ),
                onPressed: null),
          ),
          SizedBox(
            width: width * 0.03,
          ),
          Column(
            children: <Widget>[
              SizedBox(height: height * 0.03),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Text(
                "Disposable setup..      ",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 13, color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            width: width * 0.08,
          ),
          Column(
            children: <Widget>[
              SizedBox(height: height * 0.02),
              FlatButton(
                onPressed: () {
                  setState(() {
                    a++;
                  });
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Row(
                  children: <Widget>[
                    Text(' \$ $a ',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.grey[800],
                    ),
                  ],
                ),
              ),
              Text(
                "More Variants inside",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget sectionRow(double height, double width,
      GlobalKey<State<StatefulWidget>> key, String text) {
    return Container(
      width: width * 0.29,
      height: height * 0.05,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: RaisedButton(
        onPressed: () => Scrollable.ensureVisible(key.currentContext),
        color: Colors.grey[200],
        splashColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Text(
          "For you",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
