import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:servplatform/ui/views/cart_view.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/main_view_model.dart';
import 'package:servplatform/ui/views/home_view.dart';
import 'package:servplatform/ui/views/settings_view.dart';
//to be removed
import 'chat_view.dart';
import 'merchant_selection_view.dart';
import 'merchant_selection_refine_view.dart';
import 'merchant_empty_state_view.dart';
import 'camera_view_story.dart';

/// Main view container that handles rendering pages according to which bottom
/// navigation bar item is tapped
///   - can be replaced with a [TabView]
class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);

    return ViewModelProvider<MainViewModel>.withConsumer(
      viewModel: MainViewModel(
          cartItems:
              1 //Should be variable, no. of items added should be passed here
          ),
      builder: (context, model, child) => Scaffold(
        body: CameraScreen(), //MerchantStateEmptyView(), //HomeView(),
        /*SlidingUpPanel(
          defaultPanelState: PanelState.CLOSED,
          //only the container contained inside are visible
          //renderPanelSheet: false,
          //setting this property will blur the background
          backdropEnabled: true,
          maxHeight: MediaQuery.of(context).size.height * .60,

          minHeight: 0,
          controller: model.pc,
          parallaxEnabled: true,
          parallaxOffset: .5,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),

          //widget to display in case of collapsed
          //collapsed: _floatingCollapsed(context),

          //panel: _floatingPanel(context),
          panelBuilder: (ScrollController sc) => _panel(sc, context),

          body: CartView(
              //hear only the added items or selected items will be passed
              ),
        ), */
      ),
    );
  }
}

Widget _panel(ScrollController sc, context) {
  return CartView();
}
