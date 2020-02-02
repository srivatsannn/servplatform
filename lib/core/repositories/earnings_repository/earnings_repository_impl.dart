import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/earnings_repository/earnings_repository.dart';
import 'package:servplatform/core/models/earning/earning.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class EarningsRepositoryImpl implements EarningsRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Earning> earnings;

  @override
  Future<List<Earning>> fetchEarnings() async {
    try {
      final earningsJsonData =
          await _firebaseService.getDataCollection(FirebasePaths.earnings);
      final earnings =
          earningsJsonData.map((doc) => Earning.fromMap(doc.data)).toList();
      return earnings;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchEarningsAsStream() {
    return _firebaseService.streamDataCollection(FirebasePaths.earnings);
  }

  Future<Earning> getEarningById(String id) async {
    var doc =
        await _firebaseService.getDocumentById(FirebasePaths.earnings, id);
    return Earning.fromMap(doc.data);
  }

  Future removeEarning(String id) async {
    await _firebaseService.removeDocument(FirebasePaths.earnings, id);
    return;
  }

  Future updateEarning(Earning data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.earnings, data.toMap(), id);
    return;
  }

  Future addEarning(Earning data) async {
    var result = await _firebaseService.addDocument(
        FirebasePaths.earnings, data.toMap());

    return;
  }
}
