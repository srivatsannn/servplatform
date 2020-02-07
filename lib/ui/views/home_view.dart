import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/home_view_model.dart';
import 'package:servplatform/ui/shared/ui_helper.dart';
import 'package:servplatform/ui/widgets/list_header.dart';
import 'package:servplatform/ui/widgets/search_field.dart';
import 'package:servplatform/ui/widgets/service_tile.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';


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
        builder: (context, model, child) => 
        
        Scaffold(
               
      body: SlidingUpPanel(

         //only the container contained inside are visible
          renderPanelSheet: false,
          //setting this property will blur the background
          backdropEnabled: true,
          minHeight: 0,
          controller: model.pc,
          parallaxEnabled: true,
          //widget to display in case of collapsed
          //collapsed: _floatingCollapsed(context),

      
        panel: _floatingPanel(context),
      body: Center(
        
                                  child: CustomScrollView(slivers: <Widget>[
                      SliverMultilineAppBar(
                        title: 'Choose a Service for you below',
                        subtitle: 'or swipe up to browse 2, 124 active services',
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate([SearchField(),]),
                      ),
                      _RecommendedServices(),
                      
                     
                      _RecommendedServices(),
                    ]
                    ),
                  ),
      ),

                /* floatingActionButton: FloatingActionButton(
                onPressed: () => model.pc.open(),
                tooltip: 'Menu',
                child: Icon(Icons.menu,color: Colors.grey,),
                backgroundColor: Colors.white,
                elevation: 0.0,
            ), */

            bottomNavigationBar: BottomAppBar(
                elevation: bottomAppBarTheme.elevation,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('More', style: textTheme.caption),
                    LiveIconButton(
                      icon: AnimatedIcons.menu_close,
                      onPressed: () {
                            model.onTapMenu(context);

                      },
                    ),
                  ],
                ),
              ),
           


              )
              
            ,
        )
    
            ;
  }
}

class _RecommendedServices extends ProviderWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
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



Widget _floatingPanel(context){
      final textTheme = Theme.of(context).textTheme;

  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
      
    ),
    //margin: const EdgeInsets.all(24.0),
    child: Column(
      children: <Widget>[
        
        
 Text("This is the SlidingUpPanel when open"),
    Text('Deliver features faster'),
    Text('Craft beautiful UIs'),
    Expanded(
      child: FittedBox(
        fit: BoxFit.contain, // otherwise the logo will be tiny
        child: const FlutterLogo(),
      ),
    ),
  ],

     
    ),
  );
}


