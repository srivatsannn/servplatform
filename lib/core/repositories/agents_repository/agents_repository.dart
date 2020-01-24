import 'package:servplatform/core/models/agent/agent.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class AgentsRepository {
  Future<List<Agent>> fetchAgents();
  
  Future<Agent> getAgentById(String id) ;
  Future removeAgent(String id);
  Future updateAgent(Agent data, String id);
  Future addAgent(Agent data);
   



}
