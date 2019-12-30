import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/agent_merchant_selection_on_home/agent_merchant_selection_on_home.dart';
import 'package:servplatform/core/repositories/agent_merchant_selection_on_homes_repository/agent_merchant_selection_on_homes_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class AgentMerchantSelectionOnHomeViewModel extends BaseViewModel {
  final _merchantsRepository = locator<MerchantsRepository>();

  List<Merchant> _merchants = [];
  List<Merchant> get merchants => _merchants;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedmerchants = await _merchantsRepository.fetchmerchants();
      _merchants = fetchedmerchants.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
