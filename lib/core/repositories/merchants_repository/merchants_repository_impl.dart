import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/merchants_repository/merchants_repository.dart';
import 'package:servplatform/core/models/merchant/merchant.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class MerchantsRepositoryImpl implements MerchantsRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Merchant> merchants;

  @override
  Future<List<Merchant>> fetchMerchants() async {
    try {
      final merchantsJsonData = await _firebaseService
          .getDataCollection(FirebasePaths.merchants);
      final merchants =
          merchantsJsonData.map((doc) => Merchant.fromMap(doc.data)).toList();
      return merchants;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchMerchantsAsStream() {
    return _firebaseService
        .streamDataCollection(FirebasePaths.merchants);
  }

  Future<Merchant> getMerchantById(String id) async {
    var doc = await _firebaseService.getDocumentById(
        FirebasePaths.merchants, id);
    return Merchant.fromMap(doc.data);
  }

  Future removeMerchant(String id) async {
    await _firebaseService.removeDocument(
        FirebasePaths.merchants, id);
    return;
  }

  Future updateMerchant(Merchant data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.merchants, data.toMap(), id);
    return;
  }

  Future addMerchant(Merchant data) async {
    var result = await _firebaseService.addDocument(
        FirebasePaths.merchants, data.toMap());

    return;
  }
}
