import 'package:auto_animated/auto_animated.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/agent_merchant_selection_view_model.dart';
import 'package:servplatform/ui/widgets/search_field.dart';
import 'package:servplatform/ui/widgets/service_tile.dart';
import 'package:servplatform/ui/widgets/sliver_multiline_app_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MerchantSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    final textTheme = Theme.of(context).textTheme;
    final bottomAppBarTheme = Theme.of(context).bottomAppBarTheme;
    final iconTheme = Theme.of(context).iconTheme;

    return ViewModelProvider<
            AgentMerchantSelectionOnHomeViewModel>.withoutConsumer(
        viewModel: AgentMerchantSelectionOnHomeViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
              body: SlidingUpPanel(
                //only the container contained inside are visible
                //renderPanelSheet: false,
                //setting this property will blur the background
                backdropEnabled: true,
                maxHeight: MediaQuery.of(context).size.height * .80,

                minHeight: 0,
                controller: model.pc,
                parallaxEnabled: true,
                parallaxOffset: .5,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0)),

                //widget to display in case of collapsed
                //collapsed: _floatingCollapsed(context),

                //panel: _floatingPanel(context),
                panelBuilder: (ScrollController sc) => _panel(sc, context),

                body: Center(
                  child: CustomScrollView(slivers: <Widget>[
                    SliverMultilineAppBar(
                      title: 'Partner a Merchant Network',
                      subtitle: 'Select to Learn more.Cancel anytime',
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate([
                        SearchField(),
                      ]),
                    ),
                    _RecommendedServices(),
                    _RecommendedServices(),
                  ]),
                ),
              ),
              bottomNavigationBar: BottomAppBar(
                elevation: bottomAppBarTheme.elevation,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[

                    Text('More',
                        style: TextStyle(
                            fontSize: 16.0, color: Colors.grey.shade600)),
                    LiveIconButton(
                      icon: AnimatedIcons.menu_close,
                      onPressed: () {
                        model.onTapMenu(context);
                      },
                    ),
                  ],
                ),
              ),
            ));
  }
}


class _RecommendedServices
    extends ProviderWidget<AgentMerchantSelectionOnHomeViewModel> {
  @override
  Widget build(
      BuildContext context, AgentMerchantSelectionOnHomeViewModel model) {
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

class _MenuIcontButton
    extends ProviderWidget<AgentMerchantSelectionOnHomeViewModel> {
  @override
  Widget build(
      BuildContext context, AgentMerchantSelectionOnHomeViewModel model) {
    final local = AppLocalizations.of(context);

    return LiveIconButton.externalState(
      icon: AnimatedIcons.menu_close,
      iconState: !model.pc.isPanelClosed ? IconState.first : IconState.second,
      onPressed: () {
        model.onTapMenu(context);
      },
    );
  }
}

Widget _panel(ScrollController sc, context) {
  return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        controller: sc,
        children: <Widget>[
          SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 30,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(12.0))),
              ),
            ],
          ),
          SizedBox(
            height: 18.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Explore Pittsburgh",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 36.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[],
          ),
          SizedBox(
            height: 36.0,
          ),
          Container(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Images",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CachedNetworkImage(
                      imageUrl:
                          "https://images.fineartamerica.com/images-medium-large-5/new-pittsburgh-emmanuel-panagiotakis.jpg",
                      height: 120.0,
                      width: (MediaQuery.of(context).size.width - 48) / 2 - 2,
                      fit: BoxFit.cover,
                    ),
                    CachedNetworkImage(
                      imageUrl:
                          "https://cdn.pixabay.com/photo/2016/08/11/23/48/pnc-park-1587285_1280.jpg",
                      width: (MediaQuery.of(context).size.width - 48) / 2 - 2,
                      height: 120.0,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 36.0,
          ),
          Container(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("About",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  """Pittsburgh is a city in the state of Pennsylvania in the United States, and is the county seat of Allegheny County. A population of about 302,407 (2018) residents live within the city limits, making it the 66th-largest city in the U.S. The metropolitan population of 2,324,743 is the largest in both the Ohio Valley and Appalachia, the second-largest in Pennsylvania (behind Philadelphia), and the 27th-largest in the U.S.\n\nPittsburgh is located in the southwest of the state, at the confluence of the Allegheny, Monongahela, and Ohio rivers. Pittsburgh is known both as "the Steel City" for its more than 300 steel-related businesses and as the "City of Bridges" for its 446 bridges. The city features 30 skyscrapers, two inclined railways, a pre-revolutionary fortification and the Point State Park at the confluence of the rivers. The city developed as a vital link of the Atlantic coast and Midwest, as the mineral-rich Allegheny Mountains made the area coveted by the French and British empires, Virginians, Whiskey Rebels, and Civil War raiders.\n\nAside from steel, Pittsburgh has led in manufacturing of aluminum, glass, shipbuilding, petroleum, foods, sports, transportation, computing, autos, and electronics. For part of the 20th century, Pittsburgh was behind only New York City and Chicago in corporate headquarters employment; it had the most U.S. stockholders per capita. Deindustrialization in the 1970s and 80s laid off area blue-collar workers as steel and other heavy industries declined, and thousands of downtown white-collar workers also lost jobs when several Pittsburgh-based companies moved out. The population dropped from a peak of 675,000 in 1950 to 370,000 in 1990. However, this rich industrial history left the area with renowned museums, medical centers, parks, research centers, and a diverse cultural district.\n\nAfter the deindustrialization of the mid-20th century, Pittsburgh has transformed into a hub for the health care, education, and technology industries. Pittsburgh is a leader in the health care sector as the home to large medical providers such as University of Pittsburgh Medical Center (UPMC). The area is home to 68 colleges and universities, including research and development leaders Carnegie Mellon University and the University of Pittsburgh. Google, Apple Inc., Bosch, Facebook, Uber, Nokia, Autodesk, Amazon, Microsoft and IBM are among 1,600 technology firms generating \$20.7 billion in annual Pittsburgh payrolls. The area has served as the long-time federal agency headquarters for cyber defense, software engineering, robotics, energy research and the nuclear navy. The nation's eighth-largest bank, eight Fortune 500 companies, and six of the top 300 U.S. law firms make their global headquarters in the area, while RAND Corporation (RAND), BNY Mellon, Nova, FedEx, Bayer, and the National Institute for Occupational Safety and Health (NIOSH) have regional bases that helped Pittsburgh become the sixth-best area for U.S. job growth.
                  """,
                  softWrap: true,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ));





}


