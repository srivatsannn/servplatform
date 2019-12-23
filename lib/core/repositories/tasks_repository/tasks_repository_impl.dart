import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/tasks_repository/tasks_repository.dart';
import 'package:servplatform/core/models/task/task.dart';
import 'package:servplatform/core/tasks/firebase/firebase_task.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class TasksRepositoryImpl implements TasksRepository {
  final _firebaseTask = locator<FirebaseTask>();
  List<Task> tasks;

  @override
  Future<List<Task>> fetchtasks() async {
    try {
      final tasksJsonData = await _firebaseTask
          .getDataCollection(FirebasePaths.recommended_tasks);
      final tasks =
          tasksJsonData.map((doc) => Task.fromMap(doc.data)).toList();
      return tasks;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_task);
    }
  }

  Stream<QuerySnapshot> fetchTasksAsStream() {
    return _firebaseTask
        .streamDataCollection(FirebasePaths.recommended_tasks);
  }

  Future<Task> getTaskById(String id) async {
    var doc = await _firebaseTask.getDocumentById(
        FirebasePaths.recommended_tasks, id);
    return Task.fromMap(doc.data);
  }

  Future removeTask(String id) async {
    await _firebaseTask.removeDocument(
        FirebasePaths.recommended_tasks, id);
    return;
  }

  Future updateTask(Task data, String id) async {
    await _firebaseTask.updateDocument(
        FirebasePaths.recommended_tasks, data.toMap(), id);
    return;
  }

  Future addTask(Task data) async {
    var result = await _firebaseTask.addDocument(
        FirebasePaths.recommended_tasks, data.toMap());

    return;
  }
}
