import 'dart:async';

import 'package:auto_animated/auto_animated.dart';
import 'package:built_collection/src/list.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/cart/cart.dart';
import 'package:servplatform/core/models/service/service.dart';
import 'package:servplatform/core/models/user/user.dart';
import 'package:servplatform/core/repositories/carts_repository/carts_repository.dart';
import 'package:servplatform/core/repositories/services_repository/services_repository.dart';
import 'package:servplatform/core/repositories/users_repository/users_repository.dart';
import 'package:servplatform/core/services/auth/auth_service.dart';

import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';
import 'package:servplatform/core/services/key_storage/key_storage_service.dart';

class ServiceTileViewModel extends BaseViewModel {
  final _usersRepository = locator<UsersRepository>();
  final _authService = locator<AuthService>();
  final _servicesRepository = locator<ServicesRepository>();
  final _cartRepository = locator<CartsRepository>();
  final keyStorageService = locator<KeyStorageService>();

  User _user;

  User get user => _user;

  List<Service> _services = [];

  List<Service> get services => _services;

  var recommended_services;

  Future<void> init() async {
    setState(ViewState.Busy);

    try {
      if (!keyStorageService.hasLoggedIn) {
        await _authService.signInAnon();
      } //check if logged in, if not logged in login anonymous

      final String userId = 'mg8519';
      final User _user = await _usersRepository.getUserById(userId);

      recommended_services = _user.recommended_services;
      for (var serviceKey in recommended_services) {
        Service serviceItem =
            await _servicesRepository.getServiceById(serviceKey);

        _services.add(serviceItem);
      }
    } on RepositoryException {
      setState(ViewState.Error);
    }

    setState(ViewState.Idle);
  }

  Future<void> onTapAddService(int selectedService) async {
    keyStorageService.serviceCartCount +=1;
    final currService = _services[selectedService];
//    String location = keyStorageService.position;

    CartBuilder cartBuilder = CartBuilder();
    cartBuilder.provider_key = currService.provider_key;
    cartBuilder.service_key = recommended_services[selectedService];
//    cartBuilder.location = location;
    //Add Cart Data to Firebase
    Cart cartData = cartBuilder.build();
    await _cartRepository.addCart(cartData);
  }
}
