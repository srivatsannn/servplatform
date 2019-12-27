import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/agent_see_all_promotion/agent_see_all_promotion.dart';
import 'package:servplatform/core/repositories/agent_see_all_promotions_repository/agent_see_all_promotions_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class AgentSeeAllPromotionViewModel extends BaseViewModel {
  final _agentSeeAllPromotionsRepository = locator<AgentSeeAllPromotionsRepository>();

  List<AgentSeeAllPromotion> _agentSeeAllPromotions = [];
  List<AgentSeeAllPromotion> get agentSeeAllPromotions => _agentSeeAllPromotions;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedAgentSeeAllPromotions = await _agentSeeAllPromotionsRepository.fetchAgentSeeAllPromotions();
      _agentSeeAllPromotions = fetchedAgentSeeAllPromotions.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
