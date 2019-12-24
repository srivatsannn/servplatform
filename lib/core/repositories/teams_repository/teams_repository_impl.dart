import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/teams_repository/teams_repository.dart';
import 'package:servplatform/core/models/team/team.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class TeamsRepositoryImpl implements TeamsRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Team> teams;

  @override
  Future<List<Team>> fetchTeams() async {
    try {
      final teamsJsonData = await _firebaseService
          .getDataCollection(FirebasePaths.teams);
      final teams =
          teamsJsonData.map((doc) => Team.fromMap(doc.data)).toList();
      return teams;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchTeamsAsStream() {
    return _firebaseService
        .streamDataCollection(FirebasePaths.teams);
  }

  Future<Team> getTeamById(String id) async {
    var doc = await _firebaseService.getDocumentById(
        FirebasePaths.teams, id);
    return Team.fromMap(doc.data);
  }

  Future removeTeam(String id) async {
    await _firebaseService.removeDocument(
        FirebasePaths.teams, id);
    return;
  }

  Future updateTeam(Team data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.teams, data.toMap(), id);
    return;
  }

  Future addTeam(Team data) async {
    var result = await _firebaseService.addDocument(
        FirebasePaths.teams, data.toMap());

    return;
  }
}
