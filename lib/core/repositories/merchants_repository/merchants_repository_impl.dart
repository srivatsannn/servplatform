import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/merchants_repository/merchants_repository.dart';
import 'package:servplatform/core/models/merchant/merchant.dart';
import 'package:servplatform/core/merchants/firebase/firebase_merchant.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class MerchantsRepositoryImpl implements MerchantsRepository {
  final _firebaseMerchant = locator<FirebaseMerchant>();
  List<Merchant> merchants;

  @override
  Future<List<Merchant>> fetchMerchants() async {
    try {
      final merchantsJsonData = await _firebaseMerchant
          .getDataCollection(FirebasePaths.recommended_merchants);
      final merchants =
          merchantsJsonData.map((doc) => Merchant.fromMap(doc.data)).toList();
      return merchants;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_merchant);
    }
  }

  Stream<QuerySnapshot> fetchMerchantsAsStream() {
    return _firebaseMerchant
        .streamDataCollection(FirebasePaths.recommended_merchants);
  }

  Future<Merchant> getMerchantById(String id) async {
    var doc = await _firebaseMerchant.getDocumentById(
        FirebasePaths.recommended_merchants, id);
    return Merchant.fromMap(doc.data);
  }

  Future removeMerchant(String id) async {
    await _firebaseMerchant.removeDocument(
        FirebasePaths.recommended_merchants, id);
    return;
  }

  Future updateMerchant(Merchant data, String id) async {
    await _firebaseMerchant.updateDocument(
        FirebasePaths.recommended_merchants, data.toMap(), id);
    return;
  }

  Future addMerchant(Merchant data) async {
    var result = await _firebaseMerchant.addDocument(
        FirebasePaths.recommended_merchants, data.toMap());

    return;
  }
}
