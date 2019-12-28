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

class AdhocRequestsRepositoryImpl implements AdhocRequestsRepository {
  final _firebaseService = locator<FirebaseService>();
  List<AdhocRequest> adhoc_requests;

  @override
  Future<List<AdhocRequest>> fetchAdhocRequests() async {
    try {
      final adhocRequestsJsonData = await _firebaseService
          .getDataCollection(FirebasePaths.adhoc_requests);
      final adhoc_requests =
          adhocRequestsJsonData.map((doc) => AdhocRequest.fromMap(doc.data)).toList();
      return adhoc_requests;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchAdhocRequestsAsStream() {
    return _firebaseService
        .streamDataCollection(FirebasePaths.adhoc_requests);
  }

  Future<AdhocRequest> getAdhocRequestsById(String id) async {
    var doc = await _firebaseService.getDocumentById(
        FirebasePaths.adhoc_requests, id);
    return AdhocRequest.fromMap(doc.data);
  }

  Future removeAdhocRequests(String id) async {
    await _firebaseService.removeDocument(
        FirebasePaths.adhoc_requests, id);
    return;
  }

  Future updatedhocRequests(AdhocRequest data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.adhoc_requests, data.toMap(), id);
    return;
  }

  Future addAdhocRequest(AdhocRequest data) async {
    var result = await _firebaseService.addDocument(
        FirebasePaths.adhoc_requests, data.toMap());

    return;
  }
}
