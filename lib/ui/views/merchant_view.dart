import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/merchant_home_view_model.dart';
import 'package:servplatform/ui/widgets/merchant_custom_button1.dart';
import 'package:servplatform/ui/widgets/merchant_custom_button2.dart';
import 'package:servplatform/ui/widgets/time_date_barChart.dart';
import 'package:servplatform/ui/widgets/search_field.dart';
import 'package:servplatform/ui/widgets/agencies_services.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';

class MerchantView extends StatefulWidget {
  @override
  _MerchantViewState createState() => _MerchantViewState();
}

class _MerchantViewState extends State<MerchantView> {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;
    final bottomAppBarTheme = Theme.of(context).bottomAppBarTheme;
    final iconTheme = Theme.of(context).iconTheme;

    return ViewModelProvider<MerchantHomeViewModel>.withoutConsumer(
        viewModel: MerchantHomeViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => MaterialApp(
              theme: ThemeData.light(),
              home: Scaffold(
                body: Center(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: CustomScrollView(slivers: <Widget>[
                      SliverMultilineAppBar(
                        title: 'Merchant',
                        subtitle: 'Some Agencies Over Here',
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate([SearchField()]),
                      ),

                      TimeAndDateBarChart(),
                      Agencies(),
                      AgenciesServices(
                        url:
                            "https://seeklogo.com/images/S/salon-logo-573CEE0E3B-seeklogo.com.jpg",
                        title: 'Salon at Home',
                        subtitle: 'Urbanclap',
                        rating: '4.8',
                        amount: '\$236',
                        typeOfservice: 'Sliver',
                        stepsleft: 'Just 2 more steps left',
                      ),
                      AgenciesServices(
                        url:
                            "https://seeklogo.com/images/S/salon-logo-573CEE0E3B-seeklogo.com.jpg",
                        title: 'Walk a dog',
                        subtitle: 'Urbanclap',
                        rating: '4.8',
                        amount: '\$236',
                        typeOfservice: 'Sliver',
                        stepsleft: 'Just 2 more steps left',
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate([
                          Container(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Pending (2)'))
                        ]),
                      ),
                      PendingServices(),
                      PendingServices2(),

                      SliverList(
                        delegate: SliverChildListDelegate([
                          Container(
                              padding: EdgeInsets.all(8.0),
                              child: Text('DISPATCH (0)'))
                        ]),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate([
                          Container(
                              padding: EdgeInsets.all(8.0),
                              child: Text('COMPLETED (0)'))
                        ]),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate([
                          Container(
                              padding: EdgeInsets.all(8.0),
                              child: Text('CANCELLED (0)'))
                        ]),
                      ),
                      //  OptionalServices(),
                    ]),
                  ),
                ),
                bottomNavigationBar: BottomAppBar(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            // Set up more agencies
                          },
                          icon: Icon(Icons.add),
                          label:
                              Text('Set up Agencies', style: textTheme.caption),
                          backgroundColor: Colors.blueAccent,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('More', style: textTheme.caption)),
                      LiveIconButton(
                        icon: AnimatedIcons.menu_close,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}

class Agencies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('YOUR AGENCIES'),
          ),
          // Scrollable horizontal widget here
        ],
      ),
    );
  }
}

/*class OptionalServices extends ProviderWidget<MerchantHomeViewModel> {
  @override
  Widget build(BuildContext context, MerchantHomeViewModel model) {
    if (model.state == ViewState.Busy) {
      return _LoadingAnimation();
    }
    if (model.tasks.isEmpty) {
      return _NoServices();
    }
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Card();
        },
        // childCount: model.tasks.length,
      ),
    );
  }
}

class _NoServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return SliverList(
      delegate: SliverChildListDelegate([
        Center(
          child: Text(local.homeViewNoServices),
        )
      ]),
    );
  }
}

class _LoadingAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Center(
          child: PlatformCircularProgressIndicator(),
        )
      ]),
    );
  }
}*/

class PendingServices extends StatefulWidget {
  @override
  _PendingServicesState createState() => _PendingServicesState();
}

class _PendingServicesState extends State<PendingServices> {
  final space = SizedBox(
    height: 10.0,
  );

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(
      [
        Card(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('MERCHANT'),
                  Row(
                    children: <Widget>[
                      const Expanded(
                        child: Text(
                          'UrbanClap',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://seeklogo.com/images/S/salon-logo-573CEE0E3B-seeklogo.com.jpg",
                          height: 50.0,
                          width: 60.0,
                        ),
                      ),
                    ],
                  ),
                  Text('Salon at home')
                ],
              ),
            ),
            space,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('ORDER SUMMARY'),
                  Row(
                    children: <Widget>[
                      const Expanded(
                        child: Text('Hair Cut & Shave',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          child: const CircleAvatar(
                            radius: 12.0,
                            backgroundColor: Colors.green,
                            child: Text('1x'),
                          )),
                    ],
                  ),
                  Text(
                    'Designer Haricut.....',
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text('Special share')
                ],
              ),
            ),
            space,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Expanded(
                        child: Text(
                          'Facial',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          child: const CircleAvatar(
                            radius: 12.0,
                            backgroundColor: Colors.green,
                            child: Text('1x'),
                          )),
                    ],
                  ),
                  Text('Special facial')
                ],
              ),
            ),
            space,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('LOCATION INFORMATION'),
                  Row(
                    children: <Widget>[
                      const Expanded(
                        child: Text('67, Albion PI',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          child: const CircleAvatar(
                            radius: 12.0,
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.location_on,
                            ),
                          )),
                    ],
                  ),
                  Text('B Block, Sector 63')
                ],
              ),
            ),
            MerchantCustomButton1(),
          ]),
        ),
      ],
    ));
  }
}

class PendingServices2 extends StatefulWidget {
  @override
  _PendingServices2State createState() => _PendingServices2State();
}

class _PendingServices2State extends State<PendingServices2> {
  final space = SizedBox(
    height: 10.0,
  );

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(
      [
        Card(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('MERCHANT'),
                  Row(
                    children: <Widget>[
                      const Expanded(
                        child: Text(
                          'UrbanClap',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://seeklogo.com/images/S/salon-logo-573CEE0E3B-seeklogo.com.jpg",
                          height: 50.0,
                          width: 60.0,
                        ),
                      ),
                    ],
                  ),
                  Text('Salon at home')
                ],
              ),
            ),
            space,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('ORDER SUMMARY'),
                  Row(
                    children: <Widget>[
                      const Expanded(
                        child: Text('Hair Cut & Shave',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          child: const CircleAvatar(
                            radius: 12.0,
                            backgroundColor: Colors.green,
                            child: Text('1x'),
                          )),
                    ],
                  ),
                  Text(
                    'Designer Haricut.....',
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text('Special share')
                ],
              ),
            ),
            space,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Expanded(
                        child: Text(
                          'Facial',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          child: const CircleAvatar(
                            radius: 12.0,
                            backgroundColor: Colors.green,
                            child: Text('1x'),
                          )),
                    ],
                  ),
                  Text('Special facial')
                ],
              ),
            ),
            space,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('LOCATION INFORMATION'),
                  Row(
                    children: <Widget>[
                      const Expanded(
                        child: Text('67, Albion PI',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          child: const CircleAvatar(
                            radius: 12.0,
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.location_on,
                            ),
                          )),
                    ],
                  ),
                  Text('B Block, Sector 63')
                ],
              ),
            ),
            MecrhantCustomButton2(),
          ]),
        ),
      ],
    ));
  }
}
