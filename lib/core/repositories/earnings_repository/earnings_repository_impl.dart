import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/earnings_repository/earnings_repository.dart';
import 'package:servplatform/core/models/earning/earning.dart';
import 'package:servplatform/core/earnings/firebase/firebase_earning.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class EarningsRepositoryImpl implements EarningsRepository {
  final _firebaseEarning = locator<FirebaseEarning>();
  List<Earning> earnings;

  @override
  Future<List<Earning>> fetchEarnings() async {
    try {
      final earningsJsonData = await _firebaseEarning
          .getDataCollection(FirebasePaths.recommended_earnings);
      final earnings =
          earningsJsonData.map((doc) => Earning.fromMap(doc.data)).toList();
      return earnings;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_earning);
    }
  }

  Stream<QuerySnapshot> fetchEarningsAsStream() {
    return _firebaseEarning
        .streamDataCollection(FirebasePaths.recommended_earnings);
  }

  Future<Earning> getEarningById(String id) async {
    var doc = await _firebaseEarning.getDocumentById(
        FirebasePaths.recommended_earnings, id);
    return Earning.fromMap(doc.data);
  }

  Future removeEarning(String id) async {
    await _firebaseEarning.removeDocument(
        FirebasePaths.recommended_earnings, id);
    return;
  }

  Future updateEarning(Earning data, String id) async {
    await _firebaseEarning.updateDocument(
        FirebasePaths.recommended_earnings, data.toMap(), id);
    return;
  }

  Future addEarning(Earning data) async {
    var result = await _firebaseEarning.addDocument(
        FirebasePaths.recommended_earnings, data.toMap());

    return;
  }
}
