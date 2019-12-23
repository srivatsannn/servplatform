import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/adhoc_requests_repository/adhoc_requests_repository.dart';
import 'package:servplatform/core/models/adhoc_request/adhoc_request.dart';
import 'package:servplatform/core/adhoc_requests/firebase/firebase_adhoc_request.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class Adhoc_requestsRepositoryImpl implements Adhoc_requestsRepository {
  final _firebaseAdhoc_request = locator<FirebaseAdhoc_request>();
  List<Adhoc_request> adhoc_requests;

  @override
  Future<List<Adhoc_request>> fetchAdhoc_requests() async {
    try {
      final adhoc_requestsJsonData = await _firebaseAdhoc_request
          .getDataCollection(FirebasePaths.recommended_adhoc_requests);
      final adhoc_requests =
          adhoc_requestsJsonData.map((doc) => Adhoc_request.fromMap(doc.data)).toList();
      return adhoc_requests;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_adhoc_request);
    }
  }

  Stream<QuerySnapshot> fetchAdhoc_requestsAsStream() {
    return _firebaseAdhoc_request
        .streamDataCollection(FirebasePaths.recommended_adhoc_requests);
  }

  Future<Adhoc_request> getAdhoc_requestById(String id) async {
    var doc = await _firebaseAdhoc_request.getDocumentById(
        FirebasePaths.recommended_adhoc_requests, id);
    return Adhoc_request.fromMap(doc.data);
  }

  Future removeAdhoc_request(String id) async {
    await _firebaseAdhoc_request.removeDocument(
        FirebasePaths.recommended_adhoc_requests, id);
    return;
  }

  Future updateAdhoc_request(Adhoc_request data, String id) async {
    await _firebaseAdhoc_request.updateDocument(
        FirebasePaths.recommended_adhoc_requests, data.toMap(), id);
    return;
  }

  Future addAdhoc_request(Adhoc_request data) async {
    var result = await _firebaseAdhoc_request.addDocument(
        FirebasePaths.recommended_adhoc_requests, data.toMap());

    return;
  }
}
