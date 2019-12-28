import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/users_repository/users_repository.dart';
import 'package:servplatform/core/models/user/user.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class UsersRepositoryImpl implements UsersRepository {
  final _firebaseService = locator<FirebaseService>();
  List<User> users;

  @override
  Future<List<User>> fetchUsers() async {
    try {
      final usersJsonData = await _firebaseService
          .getDataCollection(FirebasePaths.users);
      final users =
          usersJsonData.map((doc) => User.fromMap(doc.data)).toList();
      return users;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchUsersAsStream() {
    return _firebaseService
        .streamDataCollection(FirebasePaths.users);
  }

  Future<User> getUserById(String id) async {
    var doc = await _firebaseService.getDocumentById(
        FirebasePaths.users, id);
    return User.fromMap(doc.data);
  }

  Future removeUser(String id) async {
    await _firebaseService.removeDocument(
        FirebasePaths.users, id);
    return;
  }

  Future updateUser(User data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.users, data.toMap(), id);
    return;
  }

  Future addUser(User data) async {
    var result = await _firebaseService.addDocument(
        FirebasePaths.users, data.toMap());

    return;
  }
}
