import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/agent_merchant_selection_on_home/agent_merchant_selection_on_home.dart';
import 'package:servplatform/core/repositories/agent_merchant_selection_on_homes_repository/agent_merchant_selection_on_homes_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class AgentMerchantSelectionOnHomeViewModel extends BaseViewModel {
  final _agentMerchantSelectionOnHomesRepository = locator<AgentMerchantSelectionOnHomesRepository>();

  List<AgentMerchantSelectionOnHome> _agentMerchantSelectionOnHomes = [];
  List<AgentMerchantSelectionOnHome> get agentMerchantSelectionOnHomes => _agentMerchantSelectionOnHomes;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedAgentMerchantSelectionOnHomes = await _agentMerchantSelectionOnHomesRepository.fetchAgentMerchantSelectionOnHomes();
      _agentMerchantSelectionOnHomes = fetchedAgentMerchantSelectionOnHomes.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
