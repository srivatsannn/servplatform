import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/home_view_model.dart';
import 'package:servplatform/ui/widgets/service_tile.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);

    return ViewModelProvider<HomeViewModel>.withoutConsumer(
      viewModel: HomeViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => PlatformScaffold(
        appBar: PlatformAppBar(
          title: Text(local.homeViewTitle),
          ios: (_) => CupertinoNavigationBarData(
            transitionBetweenRoutes: false,
          ),
        ),
        body: _Services(),
      ),
    );
  }
}

class _NoServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);

    return Center(
      child: Text(local.homeViewNoServices),
    );
  }
}

class _LoadingAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PlatformCircularProgressIndicator(),
    );
  }
}

class _Services extends ProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    if (model.state == ViewState.Busy) {
      return _LoadingAnimation();
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
}


  /* SliverFillRemaining(
  child: Column(

    children: List<int>.generate(model.services.length, (index) => index)
        .map((index) => ServiceTile(
        key: Key('${model.services[index].id}'),
        service: model.services[index],
        onTap: model.onTap,
        onAddButton: model.onAddButton,
      ))
        .toList(),
      ),
    ), */