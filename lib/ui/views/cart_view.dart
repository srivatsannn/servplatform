import 'package:flutter/material.dart';
import 'package:servplatform/ui/shared/themes.dart';
import 'package:servplatform/ui/widgets/custom_app_bar.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';
import 'package:servplatform/ui/widgets/service_tile.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/service_tile.dart';
import '../widgets/sliver_multiline_app_bar.dart';

//Fonts/Style to be added
//functionality to be added
//cart_view.dart file to added at the checkout button where in the app!

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
      children: <Widget>[
        CustomAppBar(heading: 'Review'),
        TopContainer(),
        Row(
          children: <Widget>[
            Icon(Icons.location_on),
            Text('Home'),
          ],
        ),
        Row(
          children: <Widget>[
            Icon(Icons.timer),
            Text('40 Minutes'),
          ],
        ),
        GestureDetector(
          child: Text('Schedule and Save upto 40% ->'),
          onTap: () {},
        ),
        TextField(
          decoration: InputDecoration(
              border: InputBorder.none, hintText: 'Add a delivery note:'),
        ),
        Text('Ex: Ring at the front door bell'),
        SizedBox(
          width: 250.0,
          height: 2.0,
        ),
        YourOrder(),
        TextField(
          decoration: InputDecoration(
              border: InputBorder.none, hintText: 'Add a note:'),
        ),
        BillSummary(),
        SizedBox(
          width: 250.0,
          height: 2.0,
        ),
        PaymentMethod(),
        SizedBox(
          width: 250.0,
          height: 2.0,
        ),
        PromoCode(),
        SizedBox(
          width: 250.0,
          height: 2.0,
        ),
        BottomCard(
          heading: 'Toggle Fast Forward',
          details: 'Auto pay using default method',
        ),
        SizedBox(
          width: 250.0,
          height: 2.0,
        ),
        BottomCard(
          heading: 'Default tip',
          details: 'Tip 20% by default.',
        ),
      ],
    );
  }
}

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 20.0, right: 20.0, bottom: 25.0, top: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Salon At Home',
                //heading style
              ),
              Text(
                'UrbanClap',
                //subheading style to be added
              ),
            ],
          ),
          Icon(Icons.accessibility_new),
        ],
      ),
    );
  }
}

class YourOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('Your Order'),
          Row(
              //Clicked order to be displayed
              ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Add an item',
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
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      child: Column(
        children: <Widget>[
          Text(
            'BILL SUMMARY',
            //add style
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('SUBTOTAL'),
              Text('40'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('TRANSPORTATION FEE'),
              Text('40'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('DEVELOPER FEE'),
              Text('40'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      child: Column(
        children: <Widget>[
          Text('PAYMENT METHOD'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('PAYPAL'),
              Icon(Icons.radio_button_checked, color: Colors.blue),
              //RoundcheckBox,
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('XXX-XXX-XX65'),
              Icon(Icons.radio_button_unchecked, color: Colors.blue),
              //RoundcheckBox,
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'ADD Payment Method',
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
      padding:
          EdgeInsets.only(left: 20.0, right: 20.0, bottom: 25.0, top: 25.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Apply a promo code:'),
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
      child: Wrap(
        children: <Widget>[
          Text(
            heading,
            //style
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                details,
                //style
              ),
              Icon(Icons.radio_button_unchecked, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}
