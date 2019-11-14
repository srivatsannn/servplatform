import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/repositories/posts_repository/posts_repository.dart';
import 'package:servplatform/core/serializers/post.dart';
import 'package:servplatform/core/repositories/services_repository/services_repository.dart';
import 'package:servplatform/core/serializers/service.dart';
import 'package:servplatform/core/ui_models/base_model.dart';
import 'package:servplatform/locator.dart';

class HomeModel extends BaseModel {
  final _servicesRepository = locator<ServicesRepository>();

  List<Service> _services = [];
  List<Service> get services => _services;

  Future<void> init() async {
    setState(ViewState.Busy);
    final fetchedServices = await _servicesRepository.fetchServices();
    _services = fetchedServices.take(5).toList();
    setState(ViewState.Idle);
  }
}
