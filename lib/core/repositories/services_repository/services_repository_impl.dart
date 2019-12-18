import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/services_repository/services_repository.dart';
import 'package:servplatform/core/serializers/service.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class ServicesRepositoryImpl implements ServicesRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Service> services;

  @override
  Future<List<Service>> fetchServices() async {
    try {
      final servicesJsonData = await _firebaseService
          .getDataCollection(FirebasePaths.recommended_services);
      final services =
          servicesJsonData.map((doc) => Service.fromMap(doc.data)).toList();
      return services;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchServicesAsStream() {
    return _firebaseService
        .streamDataCollection(FirebasePaths.recommended_services);
  }

  Future<Service> getServiceById(String id) async {
    var doc = await _firebaseService.getDocumentById(
        FirebasePaths.recommended_services, id);
    return Service.fromMap(doc.data);
  }

  Future removeService(String id) async {
    await _firebaseService.removeDocument(
        FirebasePaths.recommended_services, id);
    return;
  }

  Future updateService(Service data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.recommended_services, data.toMap(), id);
    return;
  }

  Future addService(Service data) async {
    var result = await _firebaseService.addDocument(
        FirebasePaths.recommended_services, data.toMap());

    return;
  }

