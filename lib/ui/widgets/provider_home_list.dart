import 'package:flutter/material.dart';
import 'package:servplatform/ui/widgets/add_button.dart';

class Section {
  GlobalKey<State<StatefulWidget>> globalKey;
  String text;

  Section({this.globalKey, this.text});
}

class ProviderHomeList extends StatefulWidget {
  @override
  _ProviderHomeListState createState() => _ProviderHomeListState();
}

class _ProviderHomeListState extends State<ProviderHomeList> {
  var services = ["Haircut & Shave", "Shave", "Facial", "Urban Clap"];
  var servicePrice = ["\$ 6.99", "\$ 63.99", "\$ 6", "\$ 63"];
  var scrollAmount = [0.0, 340.0, 680.0];
  int _itemCount = 0;
  final forYou = GlobalKey();
  final barb = GlobalKey();
  final cleanUp = GlobalKey();
  ScrollController controller;

  String url =
      "https://png.pngtree.com/png-vector/20190521/ourlarge/pngtree-skull-demon-head-black-white-hand-drawing-vector-png-image_1043333.jpg";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    // final forYou = GlobalKey();
    // final barb = GlobalKey();
    // final cleanUp = GlobalKey();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List<Section> sections = [
      Section(globalKey: forYou, text: "For You"),
      Section(globalKey: barb, text: "Barber"),
      Section(globalKey: cleanUp, text: "Cleanup"),
    ];
    return Container(
      child: SliverList(
        delegate: SliverChildListDelegate(
          [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
              child: Text(
                'Save upto 40% . In High Demand',
                style: TextStyle(color: Colors.green),
              ),
            ),
            getSectionRows(sections, height, width),
            Container(
              height: height * 2,
              width: width,
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                controller: controller,
                children: <Widget>[
                  getServicesRows(height, width),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.93,
                      child: Text(
                        "Barbaring",
                        key: barb,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  getServicesRows(height, width),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.93,
                      child: Text(
                        "Clean up",
                        key: cleanUp,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  getServicesRows(height, width),
                  SizedBox(
                    height: 950,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Widget getServicesRows(double height, double width) {
    return Container(
      width: width * 0.95,
      height: width * 0.9,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: services.length,
        itemBuilder: (BuildContext context, int index) {
          return serviceRow(
              height, width, services[index], servicePrice[index]);
          // return serviceRow();
        },
      ),
    );
  }

  Widget serviceRow(double height, double width, String text, String price) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Image.network(
          url,
          height: 90.0,
          width: 100.0,
        ),
      ),
      title: Text(text),
      subtitle: Text(
        'Disposable setup...',
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        children: <Widget>[
          Container(
            width: 80,
            child: AddButton(
              //TODO once currency symbol variable is added Text("${service.currency} ${service.price}"),
              //Text('\$'),
              // Text('\$ ${model.service.price}',

              onTap: () {},
              onUpdateQuantity: (value) {},
              onRemove: () {},
              text: price,
              is_multiple: _itemCount.toString(),
              initialValue: 1,
            ),
          ),
          Text(
            'More variants inside',
            style: TextStyle(color: Colors.grey, fontSize: 12.0),
          ),
        ],
      ),
    );
  }

  Widget getSectionRows(List<Section> sections, double height, double width) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: width * 0.95,
        height: height * 0.06,
        child: ListView.builder(
          itemCount: sections.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return sectionRow(
              height,
              width,
              sections[index].globalKey,
              sections[index].text,
              scrollAmount[index],
            );
          },
        ),
      ),
    );
  }

  Widget sectionRow(double height, double width,
      GlobalKey<State<StatefulWidget>> key, String text, double scroll) {
    return Container(
      width: width * 0.29,
      height: height * 0.04,
      margin: EdgeInsets.only(left: 8.0),
      child: RaisedButton(
        // onPressed: () => Scrollable.ensureVisible(key.currentContext),
        onPressed: () {
          // Scrollable.ensureVisible(key.currentContext, alignment: -0.5),
          controller.jumpTo(scroll);
        },
        color: Colors.grey[200],
        splashColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Text(
          text,
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

// ListTile(
//   leading: ClipRRect(
//     borderRadius: BorderRadius.circular(12.0),
//     child: Image.network(
//       url,
//       height: 90.0,
//       width: 100.0,
//     ),
//   ),
//   title: Text('Haircut & Shave'),
//   subtitle: Text(
//     'Disposable setup...',
//     overflow: TextOverflow.ellipsis,
//   ),
//   trailing: Column(
//     children: <Widget>[
//       Container(
//         width: 80,
//         child: AddButton(
//           //TODO once currency symbol variable is added Text("${service.currency} ${service.price}"),
//           //Text('\$'),
//           // Text('\$ ${model.service.price}',

//           onTap: () {},
//           onUpdateQuantity: (value) {},
//           onRemove: () {},
//           text: '\$ 6.99',
//           is_multiple: _itemCount.toString(),
//           initialValue: 1,
//         ),
//       ),
//       Text('More variants inside',
//           style: TextStyle(color: Colors.grey, fontSize: 12.0))
//     ],
//   ),
// ),
// ListTile(
//   leading: ClipRRect(
//     borderRadius: BorderRadius.circular(12.0),
//     child: Image.network(
//       url,
//       height: 90.0,
//       width: 100.0,
//     ),
//   ),
//   title: Text('Shave'),
//   subtitle: Text(
//     'Disposable setup...',
//     overflow: TextOverflow.ellipsis,
//   ),
//   trailing: Container(
//     width: 80,
//     child: AddButton(
//       //TODO once currency symbol variable is added Text("${service.currency} ${service.price}"),
//       //Text('\$'),
//       // Text('\$ ${model.service.price}',

//       onTap: () {},
//       onUpdateQuantity: (value) {},
//       onRemove: () {},
//       text: '\$ 63.99',
//       is_multiple: _itemCount.toString(),
//       initialValue: 1,
//     ),
//   ),
// ),
// ListTile(
//   leading: ClipRRect(
//     borderRadius: BorderRadius.circular(12.0),
//     child: Image.network(
//       url,
//       height: 90.0,
//       width: 100.0,
//     ),
//   ),
//   title: Text('Facial'),
//   subtitle: Text(
//     'Disposable setup...',
//     overflow: TextOverflow.ellipsis,
//   ),
//   trailing: Container(
//     width: 80,
//     child: AddButton(
//       //TODO once currency symbol variable is added Text("${service.currency} ${service.price}"),
//       //Text('\$'),
//       // Text('\$ ${model.service.price}',

//       onTap: () {},
//       onUpdateQuantity: (value) {},
//       onRemove: () {},
//       text: '\$ 6',
//       is_multiple: _itemCount.toString(),
//       initialValue: 1,
//     ),
//   ),
// ),
// ListTile(
//   leading: ClipRRect(
//     borderRadius: BorderRadius.circular(12.0),
//     child: Image.network(
//       url,
//       height: 90.0,
//       width: 100.0,
//     ),
//   ),
//   title: Text('UrbanClap'),
//   subtitle: Text(
//     'Disposable setup...',
//     overflow: TextOverflow.ellipsis,
//   ),
//   trailing: Container(
//     width: 80,
//     child: AddButton(
//       //TODO once currency symbol variable is added Text("${service.currency} ${service.price}"),
//       //Text('\$'),
//       // Text('\$ ${model.service.price}',

//       onTap: () {},
//       onUpdateQuantity: (value) {},
//       onRemove: () {},
//       text: '\$ 63',
//       is_multiple: _itemCount.toString(),
//       initialValue: 1,
//     ),
//   ),
// ),
