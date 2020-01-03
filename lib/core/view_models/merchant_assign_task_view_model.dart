import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/merchant/merchant.dart';
import 'package:servplatform/core/repositories/merchants_repository/merchants_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

//mercahnt
class MerchantAssignTaskViewModel extends BaseViewModel {
  final _merchantsRepository = locator<MerchantsRepository>();

  List<Merchant> _merchants = [];
  List<Merchant> get merchants => _merchants;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedMerchants = await _merchantsRepository.fetchMerchants();
      _merchants = fetchedMerchants.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
