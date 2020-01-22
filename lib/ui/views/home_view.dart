import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/home_view_model.dart';
import 'package:servplatform/ui/widgets/list_header.dart';
import 'package:servplatform/ui/widgets/search_field.dart';
import 'package:servplatform/ui/widgets/service_tile.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;
    final bottomAppBarTheme = Theme.of(context).bottomAppBarTheme;
    final iconTheme = Theme.of(context).iconTheme;

    return ViewModelProvider<HomeViewModel>.withoutConsumer(
        viewModel: HomeViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
              body: CustomScrollView(slivers: <Widget>[
                SliverMultilineAppBar(
                  title: 'Choose a Service for you below',
                  subtitle: 'or swipe up to browse 2, 124 active services',
                ),
                SliverList(
                  delegate: SliverChildListDelegate([SearchField()]),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (model.state == ViewState.Busy) {
                        return _LoadingAnimation();
                      }

                      if (model.services.isEmpty) {
                        return _NoServices();
                      }

                      return ServiceTile(
                        key: Key('${model.services[index].id}'),
                        service: model.services[index],
                        onAddButton: model.onAddButton(model.services[index]),
                        onTap: null,
                      );
                    },
                    childCount: model.services.length,
                  ),
                ),
              ]),
              bottomNavigationBar: BottomAppBar(
                elevation: bottomAppBarTheme.elevation,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('More', style: textTheme.caption),
                    IconButton(
                      icon: Icon(Icons.menu),
                      color: iconTheme.color,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ));
  }
}

/* List<Widget> _SliverChildList(model){

List<Widget> widget_list = [];
widget_list.add(SearchField());
//widget_list[..[_Services(model)]];
 if (model.state == ViewState.Busy) {
   widget_list.add(_LoadingAnimation());
    }

    if (model.services.isEmpty) {
         widget_list.add(_NoServices());
    }

    (context, index) => ServiceTile(
        key: Key('${model.services[index].id}'),
        service: model.services[index],
      );





return widget_list;
} */

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

/* _Services(model){
  
    if (model.state == ViewState.Busy) {
      return [_LoadingAnimation()];
    }

    if (model.services.isEmpty) {
      return [_NoServices()];
    }

    return List<int>.generate(model.services.length, (index) => index)
        .map((index) => ServiceTile(
        key: Key('${model.services[index].id}'),
        service: model.services[index],
        onTap: model.onTap,
        onAddButton: model.onAddButton,
      ))
        .toList();
} */
