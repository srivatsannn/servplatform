import 'package:servplatform/core/models/order/order.dart';

abstract class OrdersRepository {
  Future<List<Order>> fetchOrders();
}
