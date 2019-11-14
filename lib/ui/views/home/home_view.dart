import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/ui_models/views/home_model.dart';
import 'package:servplatform/ui/views/base_view.dart';
import 'package:servplatform/ui/widgets/service_tile.dart';

part 'home_view.g.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);

    return BaseView<HomeModel>(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => PlatformScaffold(
        appBar: PlatformAppBar(
          title: Text(local.homeViewTitle),
          ios: (_) => CupertinoNavigationBarData(
            transitionBetweenRoutes: false,
          ),
        ),
        body: _Services(model),
      ),
    );
  }
}

@widget
Widget _noServices() {
  return Center(
    child: Text('No Services Found'),
  );
}

@widget
Widget _loadingAnimation() {
  return Center(
    child: PlatformCircularProgressIndicator(),
  );
}

@widget
Widget _services(HomeModel model) {
  if (model.state == ViewState.Busy) {
    return const _LoadingAnimation();
  }

  if (model.services.isEmpty) {
    return _NoServices();
  }

  return ListView.builder(
    itemCount: model.services.length,
    itemBuilder: (context, index) => ServiceTile(
      key: Key('${model.services[index].id}'),
      service: model.services[index],
    ),
  );
}
