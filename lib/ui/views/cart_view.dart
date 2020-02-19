import 'package:flutter/material.dart';
import 'package:servplatform/ui/shared/themes.dart';
import 'package:servplatform/ui/widgets/custom_app_bar.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';
import 'package:servplatform/ui/widgets/service_tile.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/service_tile.dart';
import '../widgets/sliver_multiline_app_bar.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: CustomAppBar(heading: 'Review'),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: SliverMultilineAppBar(
                  title: 'Salon At Home',
                  subtitle: 'UrbanClap',
                  //doubt
                  actions: <Widget>[
                    SliverList(
                      delegate: SliverChildListDelegate([
                        ListTile(
                          leading: Expanded(
                            child: GestureDetector(
                              child: Text('Schedule and Save upto 40% ->'),
                              onTap: () {},
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text('Home'),
                        ),
                        ListTile(
                          leading: Icon(Icons.timer),
                          title: Text('40 Minutes'),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
              Expanded(
                  //logo
                  ),
            ],
          ),
          /*Expanded(
            child: GestureDetector(
              child: Text('Schedule and Save upto 40% ->'),
              onTap: () {},
            ),
          ),*/
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Add a delivery note:'),
            ),
          ),
          Expanded(
            child: Text('Ex: Ring at the front door bell'),
          ),
          SizedBox(
            width: 250.0,
            height: 2.0,
          ),
          Expanded(
            child: YourOrder(),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Add a note:'),
            ),
          ),
          Expanded(
            child: BillSummary(),
          ),
          SizedBox(
            width: 250.0,
            height: 2.0,
          ),
          Expanded(
            child: PaymentMethod(),
          ),
          SizedBox(
            width: 250.0,
            height: 2.0,
          ),
          Expanded(
            child: PromoCode(),
          ),
          SizedBox(
            width: 250.0,
            height: 2.0,
          ),
          Expanded(
            child: BottomCard(
              heading: 'Toggle Fast Forward',
              details: 'Auto pay using default method',
            ),
          ),
          SizedBox(
            width: 250.0,
            height: 2.0,
          ),
          Expanded(
            child: BottomCard(
              heading: 'Default tip',
              details: 'Tip 20% by default.',
            ),
          ),
        ],
      ),
    );
  }
}

class YourOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('Your Order'),
          Row(
              //Clicked order to be displayed
              ),
          GestureDetector(
            onTap: () {},
            child: Text('Add an item'
                //style and color to be added
                ),
          ),
        ],
      ),
    );
  }
}

class BillSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'BILL SUMMARY',
            //add style
          ),
          Row(
            children: <Widget>[
              Text('SUBTOTAL'),
              Text('40'),
            ],
          ),
          Row(
            children: <Widget>[
              Text('TRANSPORTATION FEE'),
              Text('40'),
            ],
          ),
          Row(
            children: <Widget>[
              Text('DEVELOPER FEE'),
              Text('40'),
            ],
          ),
          Row(
            children: <Widget>[
              Text('DISCOUNT'),
              Text('-20'),
            ],
          ),
          SizedBox(
            width: 250.0,
            height: 2.0,
          ),
          Row(
            children: <Widget>[
              Text('TOTAL'),
              Text('100'),
            ],
          ),
        ],
      ),
    );
  }
}

class PaymentMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('PAYMENT METHOD'),
          Row(
            children: <Widget>[
              Text('PAYPAL'),
              //RoundcheckBox,
            ],
          ),
          Row(
            children: <Widget>[
              Text('XXX-XXX-XX65'),
              //RoundcheckBox,
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Text('ADD Payment Method'
                //add style and color
                ),
          ),
        ],
      ),
    );
  }
}

class PromoCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Add a delivery note:'),
          ),
          GestureDetector(
            onTap: () {},
            child: Text('Apply Promo Code'
                //style and color
                ),
          ),
        ],
      ),
    );
  }
}

class BottomCard extends StatelessWidget {
  BottomCard({this.heading, this.details});

  final String heading;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            heading,
            //style
          ),
          Row(
            children: <Widget>[
              Text(
                details,
                //style
              ),
              Switch(
                  //onChanged: ,
                  //value: ,
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
