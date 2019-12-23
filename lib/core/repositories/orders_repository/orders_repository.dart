import 'package:servplatform/core/models/order/order.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class OrdersRepository {
  Future<List<Order>> fetchOrders();
}
