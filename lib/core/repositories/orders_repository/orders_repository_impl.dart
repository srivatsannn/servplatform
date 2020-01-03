import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/orders_repository/orders_repository.dart';
import 'package:servplatform/core/models/order/order.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class OrdersRepositoryImpl implements OrdersRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Order> orders;

  @override
  Future<List<Order>> fetchOrders() async {
    try {
      final ordersJsonData =
          await _firebaseService.getDataCollection(FirebasePaths.orders);
      final orders =
          ordersJsonData.map((doc) => Order.fromMap(doc.data)).toList();
      return orders;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchOrdersAsStream() {
    return _firebaseService.streamDataCollection(FirebasePaths.orders);
  }

  Future<Order> getOrderById(String id) async {
    var doc = await _firebaseService.getDocumentById(FirebasePaths.orders, id);
    return Order.fromMap(doc.data);
  }

  Future removeOrder(String id) async {
    await _firebaseService.removeDocument(FirebasePaths.orders, id);
    return;
  }

  Future updateOrder(Order data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.orders, data.toMap(), id);
    return;
  }

  Future addOrder(Order data) async {
    var result =
        await _firebaseService.addDocument(FirebasePaths.orders, data.toMap());

    return;
  }
}
