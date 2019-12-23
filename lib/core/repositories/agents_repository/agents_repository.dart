import 'package:servplatform/core/models/agent/agent.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class AgentsRepository {
  Future<List<Agent>> fetchAgents();
}
