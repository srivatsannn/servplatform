import 'package:servplatform/core/serializers/service.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class ServicesRepository {
  Future<List<Service>> fetchServices();
}
