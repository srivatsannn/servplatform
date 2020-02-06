import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/constant/view_routes.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/home_view_model.dart';
import 'package:servplatform/core/view_models/provider_setup_view_model.dart';
import 'package:servplatform/ui/widgets/list_header.dart';
import 'package:servplatform/ui/widgets/service_tile.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';

class ProviderPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;

    return ViewModelProvider<ProviderSetupViewModel>.withoutConsumer(
        viewModel: ProviderSetupViewModel(),
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
              ]),
            ));
  }
}
