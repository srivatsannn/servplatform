import 'package:servplatform/core/models/team/team.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class TeamsRepository {
  Future<List<Team>> fetchTeams();
  Future<Team> getTeamById(String id);
  Future removeTeam(String id);
  Future updateTeam(Team data, String id);
  Future addTeam(Team data);



}
