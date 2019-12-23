import 'package:servplatform/core/models/cart/cart.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class CartsRepository {
  Future<List<Cart>> fetchCarts();
}
