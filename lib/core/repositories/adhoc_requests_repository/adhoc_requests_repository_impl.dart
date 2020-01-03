import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/adhoc_requests_repository/adhoc_requests_repository.dart';
import 'package:servplatform/core/models/adhoc_request/adhoc_request.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class Adhoc_requestsRepositoryImpl implements Adhoc_requestsRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Adhoc_request> adhoc_requests;

  @override
  Future<List<Adhoc_request>> fetchAdhoc_requests() async {
    try {
      final adhoc_requestsJsonData = await _firebaseService
          .getDataCollection(FirebasePaths.adhoc_requests);
      final adhoc_requests =
          adhoc_requestsJsonData.map((doc) => Adhoc_request.fromMap(doc.data)).toList();
      return adhoc_requests;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchAdhoc_requestsAsStream() {
    return _firebaseService
        .streamDataCollection(FirebasePaths.adhoc_requests);
  }

  Future<Adhoc_request> getAdhoc_requestById(String id) async {
    var doc = await _firebaseService.getDocumentById(
        FirebasePaths.adhoc_requests, id);
    return Adhoc_request.fromMap(doc.data);
  }

  Future removeAdhoc_request(String id) async {
    await _firebaseService.removeDocument(
        FirebasePaths.adhoc_requests, id);
    return;
  }

  Future updateAdhoc_request(Adhoc_request data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.adhoc_requests, data.toMap(), id);
    return;
  }

  Future addAdhoc_request(Adhoc_request data) async {
    var result = await _firebaseService.addDocument(
        FirebasePaths.adhoc_requests, data.toMap());

    return;
  }
}
