import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/carts_repository/carts_repository.dart';
import 'package:servplatform/core/models/cart/cart.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class CartsRepositoryImpl implements CartsRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Cart> carts;

  @override
  Future<List<Cart>> fetchCarts() async {
    try {
      final cartsJsonData =
          await _firebaseService.getDataCollection(FirebasePaths.carts);
      final carts = cartsJsonData.map((doc) => Cart.fromMap(doc.data)).toList();
      return carts;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchCartsAsStream() {
    return _firebaseService.streamDataCollection(FirebasePaths.carts);
  }

  Future<Cart> getCartById(String id) async {
    var doc = await _firebaseService.getDocumentById(FirebasePaths.carts, id);
    return Cart.fromMap(doc.data);
  }

  Future removeCart(String id) async {
    await _firebaseService.removeDocument(FirebasePaths.carts, id);
    return;
  }

  Future updateCart(Cart data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.carts, data.toMap(), id);
    return;
  }

  Future addCart(Cart data) async {
    var result =
        await _firebaseService.addDocument(FirebasePaths.carts, data.toMap());

    return;
  }
}
