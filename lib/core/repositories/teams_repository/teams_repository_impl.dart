import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/teams_repository/teams_repository.dart';
import 'package:servplatform/core/models/team/team.dart';
import 'package:servplatform/core/teams/firebase/firebase_team.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class TeamsRepositoryImpl implements TeamsRepository {
  final _firebaseTeam = locator<FirebaseTeam>();
  List<Team> teams;

  @override
  Future<List<Team>> fetchTeams() async {
    try {
      final teamsJsonData = await _firebaseTeam
          .getDataCollection(FirebasePaths.recommended_teams);
      final teams =
          teamsJsonData.map((doc) => Team.fromMap(doc.data)).toList();
      return teams;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_team);
    }
  }

  Stream<QuerySnapshot> fetchTeamsAsStream() {
    return _firebaseTeam
        .streamDataCollection(FirebasePaths.recommended_teams);
  }

  Future<Team> getTeamById(String id) async {
    var doc = await _firebaseTeam.getDocumentById(
        FirebasePaths.recommended_teams, id);
    return Team.fromMap(doc.data);
  }

  Future removeTeam(String id) async {
    await _firebaseTeam.removeDocument(
        FirebasePaths.recommended_teams, id);
    return;
  }

  Future updateTeam(Team data, String id) async {
    await _firebaseTeam.updateDocument(
        FirebasePaths.recommended_teams, data.toMap(), id);
    return;
  }

  Future addTeam(Team data) async {
    var result = await _firebaseTeam.addDocument(
        FirebasePaths.recommended_teams, data.toMap());

    return;
  }
}
