import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/tasks_repository/tasks_repository.dart';
import 'package:servplatform/core/models/task/task.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class TasksRepositoryImpl implements TasksRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Task> tasks;

  @override
  Future<List<Task>> fetchtasks() async {
    try {
      final tasksJsonData =
          await _firebaseService.getDataCollection(FirebasePaths.tasks);
      final tasks = tasksJsonData.map((doc) => Task.fromMap(doc.data)).toList();
      return tasks;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchTasksAsStream() {
    return _firebaseService.streamDataCollection(FirebasePaths.tasks);
  }

  Future<Task> getTaskById(String id) async {
    var doc = await _firebaseService.getDocumentById(FirebasePaths.tasks, id);
    return Task.fromMap(doc.data);
  }

  Future removeTask(String id) async {
    await _firebaseService.removeDocument(FirebasePaths.tasks, id);
    return;
  }

  Future updateTask(Task data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.tasks, data.toMap(), id);
    return;
  }

  Future addTask(Task data) async {
    var result =
        await _firebaseService.addDocument(FirebasePaths.tasks, data.toMap());

    return;
  }
}
