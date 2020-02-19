import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/constant/view_routes.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/home_view_model.dart';
import 'package:servplatform/core/view_models/provider_setup_view_model.dart';
import 'package:servplatform/ui/widgets/list_header.dart';
import 'package:servplatform/ui/widgets/service_tile.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';

class ProviderPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;
    final barb = new GlobalKey();
  final cleanUp = new GlobalKey();
  int a= 1; int b= 1; int c= 1; int d= 1; int e= 1; int f= 1; int g= 1; int h= 1; int i= 1;

//  int _n = 6;

//  void add() {
//    setState(() {
//      _n++;
//    });
//  }




    return ViewModelProvider<ProviderSetupViewModel>.withoutConsumer(
        viewModel: ProviderSetupViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Center(
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
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
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
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.29,
                  height: MediaQuery.of(context).size.height * 0.05,
                  margin: new EdgeInsets.symmetric(vertical: 10.0),
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.grey[200],
                    splashColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(24.0),
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
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.29,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: RaisedButton(
                    onPressed: () =>
                        Scrollable.ensureVisible(barb.currentContext),
                    color: Colors.grey[200],
                    textColor: Colors.white,
                    splashColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(24.0),
                    ),
                    child: Text(
                      "Barbering",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.29,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: RaisedButton(
                    onPressed: () =>
                        Scrollable.ensureVisible(cleanUp.currentContext),
                    color: Colors.grey[200],
                    textColor: Colors.white,
                    splashColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(24.0),
                    ),
                    child: Text(
                      "Cleanup",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.14,
              //color: Colors.blue,

              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: MediaQuery.of(context).size.height * 0.10,
                    color: Colors.grey[300],
                    child: new IconButton(
                        icon: new Icon(
                          Icons.forum,
                          color: Colors.grey[800],
                          size: 30,
                        ),
                        onPressed: null),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Text(
                        "Haircut & Shave",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      Text(
                        "Disposable setup..      ",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      new FlatButton(

                        onPressed: (){
                          setState(() {
                                                      a++;
                                                    });
                                                  },
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius.circular(24.0),
                                                  ),
                                                  child: Row(
                                                    children: <Widget>[
                                                      new Text(' \$ $a ',
                                                          style: new TextStyle(
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
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.95,
                                        height: MediaQuery.of(context).size.height * 0.14,
                                        //color: Colors.blue,
                          
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.20,
                                              height: MediaQuery.of(context).size.height * 0.10,
                                              color: Colors.grey[300],
                                              child: new IconButton(
                                                  icon: new Icon(
                                                    Icons.forum,
                                                    color: Colors.grey[800],
                                                    size: 30,
                                                  ),
                                                  onPressed: null),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.03,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.03),
                                                Text(
                                                  "Shave                ",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold, fontSize: 18),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context).size.height * 0.005,
                                                ),
                                                Text(
                                                  "Disposable setup..      ",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(fontSize: 13, color: Colors.grey),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.08,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.02),
                                                new FlatButton(
                                                  onPressed: (){
                                                    setState(() {
                                                      b++;
                                                    });
                                                  },
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius.circular(24.0),
                                                  ),
                                                  child: Row(
                                                    children: <Widget>[
                                                      new Text(' \$ $b ',
                                                          style: new TextStyle(
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
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.95,
                                        height: MediaQuery.of(context).size.height * 0.14,
                                        //color: Colors.blue,
                          
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.20,
                                              height: MediaQuery.of(context).size.height * 0.10,
                                              color: Colors.grey[300],
                                              child: new IconButton(
                                                  icon: new Icon(
                                                    Icons.forum,
                                                    color: Colors.grey[800],
                                                    size: 30,
                                                  ),
                                                  onPressed: null),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.03,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.03),
                                                Text(
                                                  "Facial                 ",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold, fontSize: 18),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context).size.height * 0.005,
                                                ),
                                                Text(
                                                  "Disposable setup..      ",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(fontSize: 13, color: Colors.grey),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.08,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.02),
                                                new FlatButton(
                                                  onPressed: (){
                                                    setState(() {
                                                      c++;
                                                    });
                                                  },
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius.circular(24.0),
                                                  ),
                                                  child: Row(
                                                    children: <Widget>[
                                                      new Text(' \$ $c ',
                                                          style: new TextStyle(
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
                                      ),
                                      //Text("Barbering",textAlign: TextAlign.start,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      Column(
                                        children: <Widget>[
                                          Align(
                                            child: Container(
                                              width: MediaQuery.of(context).size.width * 0.93,
                          
                                              // color: Colors.red,
                                              child: Text(
                                                "Barbaring",
                                                key: barb,
                                                style:
                                                    TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.height * 0.03,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.95,
                                        height: MediaQuery.of(context).size.height * 0.14,
                                        //color: Colors.blue,
                          
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.20,
                                              height: MediaQuery.of(context).size.height * 0.10,
                                              color: Colors.grey[300],
                                              child: new IconButton(
                                                  icon: new Icon(
                                                    Icons.forum,
                                                    color: Colors.grey[800],
                                                    size: 30,
                                                  ),
                                                  onPressed: null),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.03,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.03),
                                                Text(
                                                  "Haircut & Shave",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold, fontSize: 18),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context).size.height * 0.005,
                                                ),
                                                Text(
                                                  "Disposable setup..      ",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(fontSize: 13, color: Colors.grey),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.08,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.02),
                                                new FlatButton(
                                                  onPressed: (){
                                                    setState(() {
                                                      d++;
                                                    });
                                                  },
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius.circular(24.0),
                                                  ),
                                                  child: Row(
                                                    children: <Widget>[
                                                      new Text(' \$ $d ',
                                                          style: new TextStyle(
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
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.95,
                                        height: MediaQuery.of(context).size.height * 0.14,
                                        //color: Colors.blue,
                          
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.20,
                                              height: MediaQuery.of(context).size.height * 0.10,
                                              color: Colors.grey[300],
                                              child: new IconButton(
                                                  icon: new Icon(
                                                    Icons.forum,
                                                    color: Colors.grey[800],
                                                    size: 30,
                                                  ),
                                                  onPressed: null),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.03,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.03),
                                                Text(
                                                  "Shave               ",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold, fontSize: 18),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context).size.height * 0.005,
                                                ),
                                                Text(
                                                  "Disposable setup..      ",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(fontSize: 13, color: Colors.grey),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.08,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.02),
                                                new FlatButton(
                                                  onPressed: (){
                                                    setState(() {
                                                      e++;
                                                    });
                                                  },
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius.circular(24.0),
                                                  ),
                                                  child: Row(
                                                    children: <Widget>[
                                                      new Text(' \$ $e ',
                                                          style: new TextStyle(
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
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.95,
                                        height: MediaQuery.of(context).size.height * 0.14,
                                        //color: Colors.blue,
                          
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.20,
                                              height: MediaQuery.of(context).size.height * 0.10,
                                              color: Colors.grey[300],
                                              child: new IconButton(
                                                  icon: new Icon(
                                                    Icons.forum,
                                                    color: Colors.grey[800],
                                                    size: 30,
                                                  ),
                                                  onPressed: null),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.03,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.03),
                                                Text(
                                                  "Facial               ",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold, fontSize: 18),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context).size.height * 0.005,
                                                ),
                                                Text(
                                                  "Disposable setup..      ",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(fontSize: 13, color: Colors.grey),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.08,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.02),
                                                new FlatButton(
                                                  onPressed: (){
                                                    setState(() {
                                                      f++;
                                                    });
                                                  },
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius.circular(24.0),
                                                  ),
                                                  child: Row(
                                                    children: <Widget>[
                                                      new Text(' \$ $f ',
                                                          style: new TextStyle(
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
                                      ),
                          
                                      Column(
                                        children: <Widget>[
                                          Align(
                                            child: Container(
                                              width: MediaQuery.of(context).size.width * 0.93,
                          
                                              // color: Colors.red,
                                              child: Text(
                                                "Clean up",
                                                key: cleanUp,
                                                style:
                                                    TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.height * 0.03,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.95,
                                        height: MediaQuery.of(context).size.height * 0.14,
                                        //color: Colors.blue,
                          
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.20,
                                              height: MediaQuery.of(context).size.height * 0.10,
                                              color: Colors.grey[300],
                                              child: new IconButton(
                                                  icon: new Icon(
                                                    Icons.forum,
                                                    color: Colors.grey[800],
                                                    size: 30,
                                                  ),
                                                  onPressed: null),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.03,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.03),
                                                Text(
                                                  "Haircut & Shave",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold, fontSize: 18),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context).size.height * 0.005,
                                                ),
                                                Text(
                                                  "Disposable setup..      ",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(fontSize: 13, color: Colors.grey),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.08,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.02),
                                                new FlatButton(
                                                  onPressed: (){
                                                    setState(() {
                                                      g++;
                                                    });
                                                  },
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius.circular(24.0),
                                                  ),
                                                  child: Row(
                                                    children: <Widget>[
                                                      new Text(' \$ $g ',
                                                          style: new TextStyle(
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
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.95,
                                        height: MediaQuery.of(context).size.height * 0.14,
                                        //color: Colors.blue,
                          
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.20,
                                              height: MediaQuery.of(context).size.height * 0.10,
                                              color: Colors.grey[300],
                                              child: new IconButton(
                                                  icon: new Icon(
                                                    Icons.forum,
                                                    color: Colors.grey[800],
                                                    size: 30,
                                                  ),
                                                  onPressed: null),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.03,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.03),
                                                Text(
                                                  "Shave              ",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold, fontSize: 18),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context).size.height * 0.005,
                                                ),
                                                Text(
                                                  "Disposable setup..      ",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(fontSize: 13, color: Colors.grey),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.08,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.02),
                                                new FlatButton(
                                                  onPressed: (){
                                                    setState(() {
                                                      h++;
                                                    });
                                                  },
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius.circular(24.0),
                                                  ),
                                                  child: Row(
                                                    children: <Widget>[
                                                      new Text(' \$ $h ',
                                                          style: new TextStyle(
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
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.95,
                                        height: MediaQuery.of(context).size.height * 0.14,
                                        //color: Colors.blue,
                          
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.20,
                                              height: MediaQuery.of(context).size.height * 0.10,
                                              color: Colors.grey[300],
                                              child: new IconButton(
                                                  icon: new Icon(
                                                    Icons.forum,
                                                    color: Colors.grey[800],
                                                    size: 30,
                                                  ),
                                                  onPressed: null),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.03,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.03),
                                                Text(
                                                  "Facial                ",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold, fontSize: 18),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context).size.height * 0.005,
                                                ),
                                                Text(
                                                  "Disposable setup..      ",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(fontSize: 13, color: Colors.grey),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.08,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    height: MediaQuery.of(context).size.height * 0.02),
                                                new FlatButton(
                                                  onPressed: (){
                                                    setState(() {
                                                      i++;
                                                    });
                                                  },
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius.circular(24.0),
                                                  ),
                                                  child: Row(
                                                    children: <Widget>[
                                                      new Text(' \$ $i ',
                                                          style: new TextStyle(
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
                                      ),
                                    ],
                                  ),
                                ),
                              
                            
                          
                                      
                                      )
    );

                            }
                            
                          
                            void setState(Null Function() param0) {}
}
