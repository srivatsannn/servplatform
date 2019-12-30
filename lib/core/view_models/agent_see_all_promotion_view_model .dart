import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/agent_see_all_promotion/agent_see_all_promotion.dart';
import 'package:servplatform/core/repositories/agent_see_all_promotions_repository/agent_see_all_promotions_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class AgentSeeAllPromotionViewModel extends BaseViewModel {
  final _agentsRepository =
      locator<AgentsRepository>();

  List<Agent> _agents = [];
  List<Agent> get agents =>
      _agents;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedAgents =
          await _agentsRepository.fetchAgents();
      _agents = fetchedAgents.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
