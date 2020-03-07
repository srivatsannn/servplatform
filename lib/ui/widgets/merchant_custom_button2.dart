import 'package:flutter/material.dart';

class MecrhantCustomButton2 extends StatefulWidget {
  @override
  _MecrhantCustomButton2State createState() => _MecrhantCustomButton2State();
}

class _MecrhantCustomButton2State extends State<MecrhantCustomButton2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
           Column(
             children: <Widget>[
               FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '3',
                        ),
                      ),
                      Text(
                        'Items',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text('\$48', style: TextStyle(color: Colors.white)),
                        Text('Total', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.subdirectory_arrow_right, color: Colors.white),
                        Text('TRACK', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
              padding: EdgeInsets.all(10.0),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              onPressed: () {},
            ),
             ],
           ),
          Container(
            height: 65,
            child: FlatButton(
              color: Colors.grey,
               shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
              onPressed: () {},
               child: Row(
                 children: <Widget>[
                   Icon(Icons.block),
                   Text('Cancel'),
                 ],
               )),
          ),
        ],
      ),
    );
  }
}