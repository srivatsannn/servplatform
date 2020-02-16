import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/home_view_model.dart';
import 'package:servplatform/core/view_models/merchant_home_view_model.dart';
import 'package:servplatform/ui/widgets/list_header.dart';
import 'package:servplatform/ui/widgets/search_field.dart';
import 'package:servplatform/ui/widgets/service_tile.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';

class MerchantView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;
    final bottomAppBarTheme = Theme.of(context).bottomAppBarTheme;
    final iconTheme = Theme.of(context).iconTheme;

    return ViewModelProvider<MerchantHomeViewModel>.withoutConsumer(
        viewModel: MerchantHomeViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
          body: CustomScrollView(slivers: <Widget>[
            SliverMultilineAppBar(
              title: 'Merchant',
            ),
            SliverList(
              delegate: SliverChildListDelegate([SearchField()]),
            ),
            OptionalServices(),
          ],
            GroupedBarChart(),
          ),

          bottomNavigationBar: BottomAppBar(
            elevation: bottomAppBarTheme.elevation,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('More', style: textTheme.caption),
                LiveIconButton(
                  icon: AnimatedIcons.menu_close,
                  onPressed: () {},
                ),
              ],
    floatingActionButton: FloatingActionButton(
    onPressed: () {
    // Set up more agencies
    },
    children: Icon(Icons.add),
    Text('Set up Agencies',style: textTheme.caption),
    backgroundColor: Colors.blueAccent,
            ),
          ),
        ));
  }


class OptionalServices extends ProviderWidget<MerchantHomeViewModel> {
  @override
  Widget build(BuildContext context,MerchantViewModel model) {
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