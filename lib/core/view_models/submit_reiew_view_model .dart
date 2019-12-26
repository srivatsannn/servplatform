import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/service/service.dart';
import 'package:servplatform/core/repositories/services_repository/services_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class HomeViewModel extends BaseViewModel {
  final _servicesRepository = locator<ServicesRepository>();

  List<Service> _services = [];
  List<Service> get services => _services;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedServices = await _servicesRepository.fetchServices();
      _services = fetchedServices.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
