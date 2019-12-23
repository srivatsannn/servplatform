import 'package:flutter/material.dart';
import 'package:servplatform/core/constant/view_routes.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/service/service.dart';
import 'package:servplatform/core/repositories/services_repository/services_repository.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/mixins/validators.dart';
import 'package:servplatform/core/services/navigation/navigation_service.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';


class MerchantHomeViewModel extends BaseViewModel with Validators {
  final _navigationService = locator<NavigationService>();
  final _servicesRepository = locator<ServicesRepository>();
  final _serviceController = TextEditingController();
  final _percent_matchController = TextEditingController();
  final _percent_match_FocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  TextEditingController get serviceController => _serviceController;
  TextEditingController get percent_matchController => _percent_matchController;
  FocusNode get percent_match_FocusNode => _percent_match_FocusNode;
  GlobalKey<FormState> get formKey => _formKey;

  Future<void> addService() async {
    if (!_formKey.currentState.validate()) return;
    setState(ViewState.Busy);
    try {
      final service_name = _serviceController.text.trim();
      final percentage_match = _percent_matchController.text.trim();
      var serviceitem = Service((b) => b
      ..service = service_name
      ..percentage_match = percentage_match
      );
      
      await _servicesRepository.addService(serviceitem);
      // await _servicesRepository.addService();
      await _navigationService.popAllAndPushNamed(ViewRoutes.home);
    } on RepositoryException {
      setState(ViewState.Error); 
    }
    setState(ViewState.Idle);

  }
  @override
  void dispose() {
    _serviceController.dispose();
    _percent_matchController.dispose();
    _percent_match_FocusNode.dispose();
    super.dispose();
  }
}
