import 'dart:developer';

import 'package:auto_animated/auto_animated.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/agent/agent.dart';
import 'package:servplatform/core/repositories/agents_repository/agents_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';
import 'package:flutter/material.dart';
import 'package:servplatform/core/constant/view_routes.dart';
import 'package:servplatform/core/models/service/service.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

//agent
class AgentHomeViewModel extends BaseViewModel {
  final _agentsRepository = locator<AgentsRepository>();
  final IconState _iconState = IconState.first;

  IconState get iconState => _iconState;

  //bool _isClose = false;
  //bool get isClose => _isClose;

  final PanelController _pc = new PanelController();

  PanelController get pc => _pc;

  List<Agent> _agents = [];

  List<Agent> get agents => _agents;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedAgents = await _agentsRepository.fetchAgents();
      _agents = fetchedAgents.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }

  void onTapMenu(BuildContext context) {
    if (_pc.isPanelClosed) {
      _pc.open();
    } else {
      _pc.close();
    }
  }
}
