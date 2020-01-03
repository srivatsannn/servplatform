import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/cart/cart.dart';
import 'package:servplatform/core/repositories/carts_repository/carts_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class CartViewModel extends BaseViewModel {
  final _cartsRepository = locator<CartsRepository>();

  List<Cart> _carts = [];
  List<Cart> get carts => _carts;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedCarts = await _cartsRepository.fetchCarts();
      _carts = fetchedCarts.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
