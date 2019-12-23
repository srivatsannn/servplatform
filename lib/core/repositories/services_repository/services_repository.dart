import 'package:servplatform/core/models/service/service.dart';

abstract class ServicesRepository {
  Future<List<Service>> fetchServices();

  addService(Service service) {}
  // addService() {}

}
