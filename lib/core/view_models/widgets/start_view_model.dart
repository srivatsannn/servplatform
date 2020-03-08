import 'package:servplatform/core/constant/view_routes.dart';
import 'package:servplatform/core/services/auth/auth_service.dart';
import 'package:servplatform/core/services/navigation/navigation_service.dart';
import 'package:flutter/material.dart';
import '../../../locator.dart';
import '../base_view_model.dart';

class StartUpViewModel extends BaseViewModel {
  final _authService = locator<AuthService>();
  final _navigationService = locator<NavigationService>();

  Future handleStartUpLogic() async {
    final hasLoggedInUser = await _authService.isUserLoggedIn();

    if (!hasLoggedInUser) {
      await (_navigationService.pushReplacementNamed(ViewRoutes.main));
    } else {
      await (_navigationService.pushReplacementNamed(ViewRoutes.main));
    }
  }
}
