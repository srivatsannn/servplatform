import 'dart:async';

import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/services_repository/services_repository.dart';
import 'package:servplatform/core/models/service/service.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class ServicesRepositoryImpl implements ServicesRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Service> services;

  @override
  Future<List<Service>> fetchServices() async {
    try {
      final servicesJsonData =
          await _firebaseService.getDataCollection(FirebasePaths.services);
      final services =
          servicesJsonData.map((doc) => Service.fromMap(doc.data)).toList();
      return services;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Future<Service> getServiceById(String id) async {
    var doc =
        await _firebaseService.getDocumentById(FirebasePaths.services, id);
    return Service.fromMap(doc.data);
  }

  Future removeService(String id) async {
    await _firebaseService.removeDocument(FirebasePaths.services, id);
    return;
  }

  Future updateService(Service data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.services, data.toMap(), id);
    return;
  }

  Future addService(Service data) async {
    var result = await _firebaseService.addDocument(
        FirebasePaths.services, data.toMap());

    return;
  }
}
