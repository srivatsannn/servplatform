import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:servplatform/core/constant/animations.dart';
import 'package:servplatform/core/services/hardware/hardware_service.dart';
import 'package:servplatform/core/services/local_storage/local_storage_service.dart';
import 'package:servplatform/locator.dart';
import 'package:servplatform/ui/views/main_view.dart';

/// A widget that will be shown as the first page when
/// the app is loaded for the first time.
///   - Animations are flare animations https://www.2dimensions.com/about-flare
///   - SplashView will navigated to the `next` page when `until`
///     function is finished
///   - The animation will always finish even if `until` has finished before
class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final targetPlatform = Theme.of(context).platform;
    final backgroundColor = targetPlatform == TargetPlatform.android
        ? Theme.of(context).primaryColor
        : CupertinoTheme.of(context).primaryColor;

    return SplashScreen.navigate(
      backgroundColor: backgroundColor,
      width: 100.0,
      name: Animations.loader,
      next: MainView(),
      until: () async {
        await Future.wait([
          locator<HardwareService>().init(),
          locator<LocalStorageService>().init(),
        ]);
      },
      loopAnimation: Animations.start_name,
    );
  }
}
