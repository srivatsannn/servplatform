import 'package:flutter/material.dart';
import 'package:servplatform/core/constant/view_routes.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/auth_exception.dart';
import 'package:servplatform/core/mixins/validators.dart';
import 'package:servplatform/core/services/auth/auth_service.dart';
import 'package:servplatform/core/services/navigation/navigation_service.dart';
import 'package:servplatform/core/ui_models/base_model.dart';
import 'package:servplatform/locator.dart';

class LoginModel extends BaseModel with Validators {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  GlobalKey<FormState> get formKey => _formKey;

  Future<void> login() async {
    if (!_formKey.currentState.validate()) return;

    setState(ViewState.Busy);

    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    try {
      await _authService.signInWithEmailAndPassword(email, password);

      await _navigationService.popAllAndPushNamed(ViewRoutes.splash);
      setState(ViewState.Idle);
    } on AuthException catch (error) {
      debugPrint('(ERROR) ${error.message}');
      setState(ViewState.Error);
    }
  }
}
