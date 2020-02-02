import 'package:servplatform/core/models/cart/cart.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class CartsRepository {
   Future<List<Cart>> fetchCarts();
   Future<Cart> getCartById(String id);
   Future removeCart(String id);
   Future updateCart(Cart data, String id) ;
   Future addCart(Cart data);


}
