import 'package:servplatform/core/models/service/service.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class ServicesRepository {
  Future<List<Service>> fetchServices();
}
