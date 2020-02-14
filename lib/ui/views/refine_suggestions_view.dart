import 'package:flutter/material.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class RefineSuggestion extends StatelessWidget {
  String mainValue = "Month";
  int subIndex = 0;
  List<charts.Series> seriesList;

  static List<charts.Series<Week, String>> _createWeeklyData() {

    //Temporary Values
    final weeklyData = [
      Week("MON", 80),
      Week("TUE", 65),
      Week("WED", 74),
      Week("THU", 55),
      Week("FRI", 25),
      Week("SAT", 55),
      Week("SUN", 90),
    ];

    return [
      charts.Series<Week, String>(
          id: "Week",
          domainFn: (Week week, _) => week.day,
          measureFn: (Week week, _) => week.value,
          //TemporaryConfig
          fillColorFn: (Week week, _) =>
              (week.day == "MON" || week.day == "WED")
                  ? charts.MaterialPalette.blue.shadeDefault
                  : charts.MaterialPalette.gray.shadeDefault,
          data: weeklyData)
    ];
  }

  @override
  Widget build(BuildContext context) {
    seriesList = _createWeeklyData();
    return Scaffold(
      body: Center(
          child: CustomScrollView(
        slivers: <Widget>[
          SliverMultilineAppBar(
            title: "Refine your suggestions",
            subtitle: "Select to update information",
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              OwnCard(
                img:
                    "https://www.freepngimg.com/thumb/car/6-2-car-png-file-thumb.png",
                title: "Own a vehilcle?",
                descrip: "Accord",
              ),
              OwnCard(
                img: "https://img.icons8.com/cotton/2x/home.png",
                title: "Own a space?",
                descrip: "1 BHK,Garage...",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Text("AVAILABILITY",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w700)),
              ),
              Container(
                height: 240.0,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(bottom:12.0,left: 8.0,right: 8.0),
                child: weekBarChart(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Text("SKILLS",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w700)),
              ),
              SkillCard(
                  "https://www.freepngimg.com/thumb/car/6-2-car-png-file-thumb.png",
                  "Driving"),
              SkillCard(
                  "https://images.vexels.com/media/users/3/128243/isolated/preview/a1a5b9494d50bb3754bba547f2d88487-computer-monitor-flat-icon-by-vexels.png",
                  "Coding")
            ]),
          ),
        ],
      )),
    );
  }

  Widget weekBarChart() {
    return charts.BarChart(
      seriesList,
      animate: true,
      vertical: true,
      barGroupingType: charts.BarGroupingType.grouped,
      secondaryMeasureAxis:
          charts.NumericAxisSpec(renderSpec: charts.NoneRenderSpec()),
      primaryMeasureAxis:
          charts.NumericAxisSpec(renderSpec: charts.NoneRenderSpec()),
    );
  }
}

class OwnCard extends StatefulWidget {
  final img;
  final title, descrip;

  const OwnCard({Key key, this.img, this.title, this.descrip})
      : super(key: key);

  @override
  _OwnCardState createState() => _OwnCardState();
}

class _OwnCardState extends State<OwnCard> {
  bool _isYes = false;

  String responseText = "You have selected No";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      width: 100.0,
      child: Card(
        elevation: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.network(
              widget.img,
              width: 40.0,
              height: 40.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0,16,8.0,8.0),
                  child: Text(
                    widget.descrip,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Color(0xff02BEB2), fontSize: 16.0),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Switch(
                  onChanged: (bool value) {
                    setState(() {
                      _isYes = value;
                    });
                  },
                  value: _isYes,
                  activeTrackColor: Color(0xff02BEB2),
                  activeColor: Color(0xff00696B),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _isYes ? "You have selected Yes" : "You have selected No",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xff02BEB2),
                      fontSize: 13.0,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SkillCard extends StatefulWidget {
  final String skilImg;
  final String sillName;

  SkillCard(this.skilImg, this.sillName);

  @override
  _SkillCardState createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool _isYes = false;

  String responseText = "You have selected No";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Card(
        elevation: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.network(
              widget.skilImg,
              width: 40.0,
              height: 40.0,
            ),
            Text(
              widget.sillName,
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.start,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Switch(
                  onChanged: (bool value) {
                    setState(() {
                      _isYes = value;
                    });
                  },
                  value: _isYes,
                  activeTrackColor: Color(0xff02BEB2),
                  activeColor: Color(0xff00696B),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _isYes ? "You have selected Yes" : "You have selected No",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xff02BEB2),
                      fontSize: 13.0,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}

class Week {
  final String day;
  final int value;

  Week(this.day, this.value);
}
