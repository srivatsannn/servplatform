import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:servplatform/core/resource/database.dart' as db;
import 'package:servplatform/ui/widgets/balance.dart';
import 'package:servplatform/ui/widgets/domain.dart';
import 'package:servplatform/ui/widgets/drop_widget.dart';
import 'package:servplatform/ui/widgets/group_bar_chart.dart';

class TimeAndDateBarChart extends StatefulWidget {
  @override
  _TimeAndDateState createState() => _TimeAndDateState();
}

class _TimeAndDateState extends State<TimeAndDateBarChart> {
  final Map<String, List<String>> timeValues = {
    "Day": ["Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun"],
    "Month": [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "June",
      "July",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ],
    "Year": List.generate(21, (index) => "20${index + 1}").skip(10).toList()
  };
  String mainValue = "Year";
  int subIndex = 0;
  List<charts.Series<Balance, String>> series;
  @override
  void initState() {
    series = db.getSeries(mainValue, subIndex, max: 10);
    super.initState();
    updateData();
  }

  updateData() async {
    Timer(Duration(milliseconds: 400), () {
      setState(() {
        series = db.getSeries(mainValue, subIndex, max: 1000);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "\$621",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              Text(
                DateFormat.yMMMd().format(DateTime.now()),
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              DropWidget(
                timeValues,
                (mainValue, subIndex) {
                  setState(() {
                    if (this.mainValue != mainValue) this.mainValue = mainValue;
                    if (this.subIndex != subIndex) this.subIndex = subIndex;
                    series = db.getSeries(mainValue, subIndex, max: 1000);
                  });
                },
                mainValue: mainValue,
              ),
              SizedBox(height: 10.0),
              GroupedBarChart(
                  Domain.getDomain(["Income", "Expenditure"],
                      [Color(0xff1274ED), Color(0xffeeeeee)]),
                  series),
            ],
          )
          // Scrollable horizontal widget here
        ],
      ),
    );
  }
}
