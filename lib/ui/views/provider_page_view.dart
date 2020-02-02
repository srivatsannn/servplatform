import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/constant/view_routes.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/home_view_model.dart';
import 'package:servplatform/ui/widgets/list_header.dart';
import 'package:servplatform/ui/widgets/service_tile.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';

class ProviderPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;

    return ViewModelProvider<HomeViewModel>.withoutConsumer(
        viewModel: HomeViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
              body: CustomScrollView(slivers: <Widget>[
                SliverMultilineAppBar(
                  title: 'Provider Page',
                  subtitle: 'TBD',
                  leading: IconButton(
                    color: Colors.grey[400],
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        ViewRoutes.main,
                        arguments: {},
                      );
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  actions: <Widget>[
                    IconButton(
                      color: Colors.grey[400],
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    ),
                    IconButton(
                      color: Colors.grey[400],
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                    ),
                  ],
                ),
                SliverFillRemaining(
                  child: Column(
                    children: List<int>.generate(
                            model.services.length, (index) => index)
                        .map((index) => ServiceTile(
                              key: Key('${model.services[index].id}'),
                              service: model.services[index],
                            ))
                        .toList(),
                  ),
                ),
              ]),
            ));
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

/* 
import 'package:flutter/material.dart';

class SliverMultilineAppBar extends StatelessWidget {
  final String title;
  final Widget leading;
  final List<Widget> actions;

  SliverMultilineAppBar({this.title, this.leading, this.actions});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
        final textTheme = Theme.of(context).textTheme;


    double availableWidth = mediaQuery.size.width - 160;
    /* if (actions != null) {
      availableWidth -= 32 * actions.length;
    }
    if (leading != null) {
      availableWidth -= 32;
    } */
    return SliverAppBar(
      expandedHeight: 200.0,
      forceElevated: true,
      leading: leading,
      actions: actions,
      flexibleSpace: FlexibleSpaceBar(
        title: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: availableWidth,
          ),
          child: Text(title,style: textTheme.headline),
        ),
      ),
    );
  }
} */
