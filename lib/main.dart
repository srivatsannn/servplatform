import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  title: 'Serv platform',
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
  theme: appTheme,
));

ThemeData appTheme = ThemeData(
  fontFamily: 'Roboto'
);
const PrimaryColor = Color(0xFF002f5c);
const SecondaryColor = Color(0xFF399bf7);
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        children: <Widget>[
          HomeScreenTopPart(),
          HomeScreenBottomPart(),
          ],
        ),
      ),
    );
  }
}

const TextStyle dropDownLabelStyle = TextStyle(color: Colors.black, fontSize: 16.0);
const TextStyle dropDownMenuStyle = TextStyle(color: Colors.black, fontSize: 16.0);
List<String> locations = ['Bangalore (BAN)', 'Delhi-NCR (DEL)', 'Chennai (CHE)', 'Use Current location'];

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  var selectedLocationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            height: 320,
            child: Column(
              children: <Widget>[
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.location_on, color: Colors.black,),
                      SizedBox(width: 16.0,),
                      PopupMenuButton(
                        onSelected: (index) {
                          if (index != 3) {
                            setState(() {
                              selectedLocationIndex = index;
                            });
                          }
                        },
                        child: Row(
                          children: <Widget>[
                            Text(locations[selectedLocationIndex], style: dropDownLabelStyle),
                            Icon(Icons.keyboard_arrow_down, color: Colors.black,)
                          ],
                        ),
                        itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
                          PopupMenuItem(
                            child: Text(locations[0], style: dropDownMenuStyle,),
                            value: 0,
                          ),
                          PopupMenuItem(
                            child: Text(locations[1], style: dropDownMenuStyle,),
                            value: 1,
                          ),
                          PopupMenuItem(
                            child: Text(locations[2], style: dropDownMenuStyle,),
                            value: 2,
                          ),
                          PopupMenuItem(
                            child: Row(
                              children: <Widget>[
                                Text(locations[3], style: dropDownMenuStyle,),
                                SizedBox(width: 2.0,),
                                Icon(Icons.my_location),
                              ],
                            ),
                            value: 3,
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.settings, color: Colors.black,),
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                Text("Choose a service for\nyou below", textAlign: TextAlign.center, style: TextStyle(fontSize: 26.0,color: Colors.black),),
                SizedBox(height: 10.0,),
                Text("or swipe up to browse 2,123 active services", textAlign: TextAlign.center, style: TextStyle(fontSize: 14.0,color: Colors.black)),
                SizedBox(height: 20.0,),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 7.5,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    child: TextField(
                      style: TextStyle(color: Colors.black, fontSize: 16.0,fontFamily: 'Roboto'),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
                        hintText: locations[1],
                        suffixIcon: Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.all(Radius.circular(30.0),),
                          child: Icon(Icons.search, color: Colors.black,),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            )
      ),
      ],
    );
  }
}

class HomeScreenBottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Services offered:", textAlign: TextAlign.center,),
          SizedBox(height: 10.0,),
          ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                ServiceCard(),
                ServiceCard(),
                ServiceCard(),
                ServiceCard(),
                ServiceCard(),
              ],
          )
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0),),
              border: Border.all(color: Colors.black12),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 16.0),
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/images/laundry.png'),
                      SizedBox(width: 30.0,),
                      Column(
                        children: <Widget>[
                          Text('Get laundry done', style: TextStyle(fontSize: 22.0,)),
                          SizedBox(height: 10.0,),
                          Wrap(
                            spacing: 20.0,
                            children: <Widget>[
                              Text('11.20 pm .', style: TextStyle(fontSize: 12.0, color: Colors.grey),),
                              Text('98% match', style: TextStyle(fontSize: 12.0,color: Colors.green),),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 30.0,),
                      Column(
                        children: <Widget>[
                              Text("\$40",style: TextStyle(fontSize: 15.0),),
                              SizedBox(height: 10.0,),
                              Row(
                                children: <Widget>[
                                  Text('per service', style: TextStyle(fontSize: 12.0,color: Colors.grey),),
                                ],
                              )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
