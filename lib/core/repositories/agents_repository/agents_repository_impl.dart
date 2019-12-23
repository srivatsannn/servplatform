import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/agents_repository/agents_repository.dart';
import 'package:servplatform/core/models/agent/agent.dart';
import 'package:servplatform/core/agents/firebase/firebase_agent.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class AgentsRepositoryImpl implements AgentsRepository {
  final _firebaseAgent = locator<FirebaseAgent>();
  List<Agent> agents;

  @override
  Future<List<Agent>> fetchAgents() async {
    try {
      final agentsJsonData = await _firebaseAgent
          .getDataCollection(FirebasePaths.recommended_agents);
      final agents =
          agentsJsonData.map((doc) => Agent.fromMap(doc.data)).toList();
      return agents;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_agent);
    }
  }

  Stream<QuerySnapshot> fetchAgentsAsStream() {
    return _firebaseAgent
        .streamDataCollection(FirebasePaths.recommended_agents);
  }

  Future<Agent> getAgentById(String id) async {
    var doc = await _firebaseAgent.getDocumentById(
        FirebasePaths.recommended_agents, id);
    return Agent.fromMap(doc.data);
  }

  Future removeAgent(String id) async {
    await _firebaseAgent.removeDocument(
        FirebasePaths.recommended_agents, id);
    return;
  }

  Future updateAgent(Agent data, String id) async {
    await _firebaseAgent.updateDocument(
        FirebasePaths.recommended_agents, data.toMap(), id);
    return;
  }

  Future addAgent(Agent data) async {
    var result = await _firebaseAgent.addDocument(
        FirebasePaths.recommended_agents, data.toMap());

    return;
  }
}
