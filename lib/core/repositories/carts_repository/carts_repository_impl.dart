import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/carts_repository/carts_repository.dart';
import 'package:servplatform/core/models/cart/cart.dart';
import 'package:servplatform/core/carts/firebase/firebase_cart.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class CartsRepositoryImpl implements CartsRepository {
  final _firebaseCart = locator<FirebaseCart>();
  List<Cart> carts;

  @override
  Future<List<Cart>> fetchCarts() async {
    try {
      final cartsJsonData = await _firebaseCart
          .getDataCollection(FirebasePaths.recommended_carts);
      final carts =
          cartsJsonData.map((doc) => Cart.fromMap(doc.data)).toList();
      return carts;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_cart);
    }
  }

  Stream<QuerySnapshot> fetchCartsAsStream() {
    return _firebaseCart
        .streamDataCollection(FirebasePaths.recommended_carts);
  }

  Future<Cart> getCartById(String id) async {
    var doc = await _firebaseCart.getDocumentById(
        FirebasePaths.recommended_carts, id);
    return Cart.fromMap(doc.data);
  }

  Future removeCart(String id) async {
    await _firebaseCart.removeDocument(
        FirebasePaths.recommended_carts, id);
    return;
  }

  Future updateCart(Cart data, String id) async {
    await _firebaseCart.updateDocument(
        FirebasePaths.recommended_carts, data.toMap(), id);
    return;
  }

  Future addCart(Cart data) async {
    var result = await _firebaseCart.addDocument(
        FirebasePaths.recommended_carts, data.toMap());

    return;
  }
}
