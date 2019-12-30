import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/tip_review/tip_review.dart';
import 'package:servplatform/core/repositories/tip_reviews_repository/tip_reviews_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class TipReviewViewModel extends BaseViewModel {
  final _ordersRepository = locator<OrdersRepository>();

  List<Order> _orders = [];
  List<Order> get orders => _orders;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedOrders = await _ordersRepository.fetchOrders();
      _orders = fetchedOrders.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
