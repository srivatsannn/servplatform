import 'package:servplatform/core/models/team/team.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class TeamsRepository {
  Future<List<Team>> fetchTeams();
}
