import 'package:flutter/material.dart';

class AgenciesServices extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;
  final String rating;
  final String amount;
  final String typeOfservice;
  final String stepsleft;

  AgenciesServices(
      {@required this.url,
      this.title,
      this.subtitle,
      this.rating,
      this.amount,
      this.typeOfservice,
      this.stepsleft});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Stack(children: <Widget>[
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(subtitle),
                      Text(rating, style: TextStyle(color: Colors.amberAccent))
                    ],
                  ),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      url,
                      height: 90.0,
                      width: 100.0,
                    ),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          amount,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                  isThreeLine: true,
                ),
                Container(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(typeOfservice),
                        Text(
                          stepsleft,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ))),
              ],
            ),
          ),
          Positioned(
            // draw a red marble
            top: 0.0,
            right: 15.0,
            child: CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.lightGreenAccent,
                child: Text('2', style: TextStyle(color: Colors.black))),
          ),
        ])
      ]),
    );
  }
}
