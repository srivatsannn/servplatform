import 'package:flutter/material.dart';

class MerchantCustomButton1 extends StatefulWidget {
  @override
  _MerchantCustomButton1State createState() => _MerchantCustomButton1State();
}

class _MerchantCustomButton1State extends State<MerchantCustomButton1> {
  final space = SizedBox(
    height: 10.0,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text('\$48', style: TextStyle(color: Colors.white)),
                        Text('Total', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.flash_on, color: Colors.white),
                      Text('ASSIGN NOW', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
              padding: EdgeInsets.all(10.0),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
