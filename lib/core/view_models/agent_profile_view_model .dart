import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/agent_profile/agent_profile.dart';
import 'package:servplatform/core/repositories/agent_profiles_repository/agent_profiles_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class AgentProfileViewModel extends BaseViewModel {
  final _agentProfilesRepository = locator<AgentprofilesRepository>();

  List<AgentProfile> _agentProfiles = [];
  List<AgentProfile> get agentProfiles => _agentProfiles;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedAgentProfiles = await _agentProfilesRepository.fetchAgentProfiles();
      _agentProfiles = fetchedAgentProfiles.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
