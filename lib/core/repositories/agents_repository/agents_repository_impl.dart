import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/agents_repository/agents_repository.dart';
import 'package:servplatform/core/models/agent/agent.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class AgentsRepositoryImpl implements AgentsRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Agent> agents;

  @override
  Future<List<Agent>> fetchAgents() async {
    try {
      final agentsJsonData =
          await _firebaseService.getDataCollection(FirebasePaths.agents);
      final agents =
          agentsJsonData.map((doc) => Agent.fromMap(doc.data)).toList();
      return agents;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchAgentsAsStream() {
    return _firebaseService.streamDataCollection(FirebasePaths.agents);
  }

  Future<Agent> getAgentById(String id) async {
    var doc = await _firebaseService.getDocumentById(FirebasePaths.agents, id);
    return Agent.fromMap(doc.data);
  }

  Future removeAgent(String id) async {
    await _firebaseService.removeDocument(FirebasePaths.agents, id);
    return;
  }

  Future updateAgent(Agent data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.agents, data.toMap(), id);
    return;
  }

  Future addAgent(Agent data) async {
    var result =
        await _firebaseService.addDocument(FirebasePaths.agents, data.toMap());

    return;
  }
}
