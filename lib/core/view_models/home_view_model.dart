import 'dart:async';

import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/service/service.dart';
import 'package:servplatform/core/models/user/user.dart';
import 'package:servplatform/core/repositories/services_repository/services_repository.dart';
import 'package:servplatform/core/repositories/users_repository/users_repository.dart';
import 'package:servplatform/core/services/auth/auth_service.dart';
import 'package:servplatform/core/constant/view_routes.dart';

import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';
import 'package:servplatform/core/services/key_storage/key_storage_service.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeViewModel extends BaseViewModel {
  final _usersRepository = locator<UsersRepository>();
  final _authService = locator<AuthService>();
  final _servicesRepository = locator<ServicesRepository>();
  final keyStorageService = locator<KeyStorageService>();

  User _user;

  User get user => _user;

  List<Service> _services = [];

  List<Service> get services => _services;
  final TextEditingController _searchControl = TextEditingController();

  TextEditingController get searchControl => _searchControl;

//Initialized variables for slide up panel and animated icon

  final IconState _iconState = IconState.first;

  IconState get iconState => _iconState;

  //bool _isClose = false;
  //bool get isClose => _isClose;

  final PanelController _pc = new PanelController();

  PanelController get pc => _pc;

  Future<void> init() async {
    setState(ViewState.Busy);

    try {
      if (!keyStorageService.hasLoggedIn) {
        await _authService.signInAnon();
      } //check if logged in, if not logged in login anonymous

      //TO-DO
      //get current location
      //  if permissions not accepted navigate to locations screen(all tasks from demo locationsetter)

      //final String userId = keyStorageService.userId;
      //Mocked user_id

      final String userId = 'mg8519';
      final User _user = await _usersRepository.getUserById(userId);

      final recommended_services = _user.recommended_services;
      for (var serviceKey in recommended_services) {
        Service serviceItem =
            await _servicesRepository.getServiceById(serviceKey);
        print(serviceItem.toJson());
        _services.add(serviceItem);
      }
      print("printing services");
      print(_services);
      //TO-DO
      //fetch stories (recommended stories for user)
      //fetch categories (recommended categories for user)

    } on RepositoryException {
      setState(ViewState.Error);
    }

    setState(ViewState.Idle);
  }

  Future<void> onUserLocationUpdate() async {}

  void onTap(Service service, BuildContext context) {
    Navigator.of(context).pushNamed(
      ViewRoutes.provider_page,
      arguments: service,
    );
  }

  void onTapMenu(BuildContext context) {
    if (_pc.isPanelClosed) {
      _pc.open();
    } else {
      _pc.close();
    }
  }
}
//update location() = navigate to locatios Screen
//update when required => open diaglog update navigate screen
//
//tapsearch()=> navigate to search
//
//tabservice => navigate to service _detail page
//
//onTapAddService=> add service to cart, if service has options navigate t service options screen, if destination location , navigatoe to destinaton_location_screen

//Backlog
//create adhoc request()
//navigate to orders
