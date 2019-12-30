import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/agent_profile/agent_profile.dart';
import 'package:servplatform/core/repositories/agent_profiles_repository/agent_profiles_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class AgentProfileViewModel extends BaseViewModel {
  final _agentsRepository = locator<AgentsRepository>();

  List<Agent> _agents = [];
  List<Agent> get agents => _agents;

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
