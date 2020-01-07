import 'package:servplatform/core/models/service/service.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class ServicesRepository {
  Future<List<Service>> fetchServices();
  Future<Service> getServiceById(String id);
}
