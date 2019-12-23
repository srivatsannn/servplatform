import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:servplatform/core/constant/view_routes.dart';
import 'package:servplatform/core/models/post/post.dart';
import 'package:servplatform/ui/views/login_view.dart';
import 'package:servplatform/ui/views/main_view.dart';
import 'package:servplatform/ui/views/merchant_home_view.dart';
import 'package:servplatform/ui/views/post_details_view.dart';
import 'package:servplatform/ui/views/splash_view.dart';

/// Class that generates routes for the application
///   - Routes are generated by the list of routes in the app
///   - Routes can also require parameters. e.g. `PostDetailView(post: post)`
class Router {
  static Route<dynamic> generateRoute(
    BuildContext context,
    RouteSettings settings,
  ) {
    return platformPageRoute(
      context: context,
      settings: RouteSettings(name: settings.name),
      builder: (context) => _generateView(settings),
      fullscreenDialog: _fullScreenDialogs.contains(settings.name),
    );
  }

  static Widget _generateView(RouteSettings settings) {
    switch (settings.name) {

      // Tab Views
      case ViewRoutes.main:
        return MainView();
      case ViewRoutes.login:
        return LoginView();
      case ViewRoutes.merchant_home:
        return MerchantHomeView();
      

      case ViewRoutes.splash:
        return SplashView();
      case ViewRoutes.post_details:
        final post = settings.arguments as Post;
        return PostDetailsView(post: post);

      default:
        return Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        );
    }
  }

  // Add routes that should behave as fullScreenDialogs
  static final _fullScreenDialogs = [
    // Routes.route_1,
    // Routes.route_2,
  ];
}
