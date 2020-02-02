import 'package:servplatform/core/models/order/order.dart';

abstract class OrdersRepository {
  Future<List<Order>> fetchOrders();
  Future<Order> getOrderById(String id) ;
  Future removeOrder(String id) ;
  Future updateOrder(Order data, String id);
  Future addOrder(Order data);


}
