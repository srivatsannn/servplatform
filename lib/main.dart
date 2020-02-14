
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider/provider.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/managers/core_manager.dart';
import 'package:servplatform/core/managers/dialog_manager.dart';
import 'package:servplatform/core/services/dialog/dialog_service.dart';
import 'package:servplatform/core/services/key_storage/key_storage_service.dart';
import 'package:servplatform/core/services/navigation/navigation_service.dart';
import 'package:servplatform/core/utils/logger.dart';
import 'package:servplatform/locator.dart';
import 'package:servplatform/provider_setup.dart';
import 'package:servplatform/ui/router.dart';
import 'package:servplatform/ui/shared/themes.dart' as themes;
import 'package:servplatform/local_setup.dart';
import 'package:servplatform/ui/views/login_view.dart';
import 'package:servplatform/ui/views/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupLogger();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: CoreManager(
        child: MaterialApp(
          theme: themes.primaryMaterialTheme,
          darkTheme: themes.darkMaterialTheme,
          localizationsDelegates: localizationsDelegates,
          supportedLocales: supportedLocales,
          localeResolutionCallback: loadSupportedLocals,
          onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
          navigatorKey: navigationService.navigatorKey,
          onGenerateRoute: (settings) =>
              Router.generateRoute(context, settings),
          builder: _setupDialogManager,
          home: _getStartupScreen(),
        ),
      ),
    );
  }

  /// Builder function provided by MaterialApp to place it above the
  /// Navigator of the App. Which means we also give it it's
  /// own navigator to dismiss and show alerts on.
  Widget _setupDialogManager(context, widget) {
    return Navigator(
      key: locator<DialogService>().dialogNavigationKey,
      onGenerateRoute: (settings) => platformPageRoute(
        context: context,
        builder: (context) => DialogManager(child: widget),
      ),
    );
  }

  /// Gets the current View that should show. This function
  /// determines which page to show according to whether
  /// the user has logged in already. Could be used for sign up, etc...
  Widget _getStartupScreen() {
    final keyStorageService = locator<KeyStorageService>();

    if (!keyStorageService.hasLoggedIn) {
      return LoginView();
    }

    return SplashView();
  }
}
