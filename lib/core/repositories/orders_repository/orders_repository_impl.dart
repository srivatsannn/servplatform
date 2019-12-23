import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/orders_repository/orders_repository.dart';
import 'package:servplatform/core/models/order/order.dart';
import 'package:servplatform/core/orders/firebase/firebase_order.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class OdersRepositoryImpl implements OrdersRepository {
  final _firebaseOrder = locator<FirebaseOrder>();
  List<Order> orders;

  @override
  Future<List<Order>> fetchOrders() async {
    try {
      final ordersJsonData = await _firebaseOrder
          .getDataCollection(FirebasePaths.recommended_orders);
      final orders =
          ordersJsonData.map((doc) => Order.fromMap(doc.data)).toList();
      return orders;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_order);
    }
  }

  Stream<QuerySnapshot> fetchOrdersAsStream() {
    return _firebaseOrder
        .streamDataCollection(FirebasePaths.recommended_orders);
  }

  Future<Order> getOrderById(String id) async {
    var doc = await _firebaseOrder.getDocumentById(
        FirebasePaths.recommended_orders, id);
    return Order.fromMap(doc.data);
  }

  Future removeOrder(String id) async {
    await _firebaseOrder.removeDocument(
        FirebasePaths.recommended_orders, id);
    return;
  }

  Future updateOrder(Order data, String id) async {
    await _firebaseOrder.updateDocument(
        FirebasePaths.recommended_orders, data.toMap(), id);
    return;
  }

  Future addOrder(Order data) async {
    var result = await _firebaseOrder.addDocument(
        FirebasePaths.recommended_orders, data.toMap());

    return;
  }
}
