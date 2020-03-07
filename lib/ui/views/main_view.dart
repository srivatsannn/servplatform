import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/merchant_home_view_model.dart';
import 'package:servplatform/ui/views/home_view.dart';
import 'package:servplatform/ui/views/merchant_view.dart';
import 'package:servplatform/ui/views/provider_page_view.dart';

/// Main view container that handles rendering pages according to which bottom
/// navigation bar item is tapped
///   - can be replaced with a [TabView]
class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return ViewModelProvider<MerchantHomeViewModel>.withConsumer(
      viewModel: MerchantHomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: ProviderPageView(),
      ),
    );
  }
}
