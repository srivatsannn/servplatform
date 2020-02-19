import 'dart:async';
import 'package:auto_animated/auto_animated.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/models/service/service.dart';
import 'package:servplatform/core/models/user/user.dart';
import 'package:servplatform/core/repositories/merchants_repository/merchants_repository.dart';
import 'package:servplatform/core/repositories/services_repository/services_repository.dart';
import 'package:servplatform/core/repositories/users_repository/users_repository.dart';
import 'package:servplatform/core/services/auth/auth_service.dart';
import 'package:servplatform/core/services/key_storage/key_storage_service.dart';
import 'package:servplatform/core/view_models/agent_merchant_selection_view_model.dart';
import 'package:servplatform/core/view_models/home_view_model.dart';
import 'package:servplatform/core/view_models/merchant_home_view_model.dart';
import 'package:servplatform/locator.dart';
import 'package:intl/intl.dart';
import 'package:servplatform/ui/widgets/balance.dart';
import 'package:servplatform/ui/widgets/domain.dart';
import 'package:servplatform/ui/widgets/group_bar_chart.dart';
import 'package:servplatform/ui/widgets/search_field.dart';
import 'package:servplatform/ui/widgets/service_tile.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

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
  
  String mainValue="Year";
  int subIndex=0;
  List<charts.Series<Balance, String>>  series;


    return ViewModelProvider<MerchantHomeViewModel>.withoutConsumer(
        viewModel: MerchantHomeViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
         body:
         Center(
           child: CustomScrollView(slivers: <Widget>[
                SliverMultilineAppBar(
                  title: 'Merchant',
                  subtitle: 'Some Services with details',
                ),
                Text(DateFormat.yMMMd().format(new DateTime.now())),
                SliverList(
                  delegate: SliverChildListDelegate([SearchField()]),
                ),
             // GroupedBarChart(Domain.getDomain(["Income","Expenditure"], [Color(0xff1274ED),Color(0xffeeeeee)]),series),
               OptionalServices(),
              ]
              ),
         ),
       
    bottomNavigationBar: BottomAppBar(
    elevation: bottomAppBarTheme.elevation,
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
                label: Text('Set up Agencies',style: textTheme.caption),
                backgroundColor: Colors.blueAccent,
                ),
           ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text('More', style: textTheme.caption)),
                LiveIconButton(
                  icon: AnimatedIcons.menu_close,
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
        )  
    );
  }
}

class OptionalServices extends ProviderWidget<MerchantHomeViewModel> {
  @override
  Widget build(BuildContext context,MerchantHomeViewModel model) {
    if (model.state == ViewState.Busy) {
      return _LoadingAnimation();
    }

    if (model.services.isEmpty) {
      return _NoServices();
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
            return ServiceTile(
            key: Key('${model.services[index].id}'),
            service: model.services[index],
            onTap: null,
                  );
                },
            childCount: model.services.length,
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
}



