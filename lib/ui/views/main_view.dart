import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/main_view_model.dart';
import 'package:servplatform/ui/views/home_view.dart';
import 'package:servplatform/ui/views/settings_view.dart';

/// Main view container that handles rendering pages according to which bottom
/// navigation bar item is tapped
///   - can be replaced with a [TabView]
class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);

    return ViewModelProvider<MainViewModel>.withConsumer(
      viewModel: MainViewModel(),
      builder: (context, model, child) => Scaffold(
        
        body: 
            HomeView(),
           
        ),
        
      );
  }
}
