import 'package:servplatform/core/models/task/task.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class TasksRepository {
  Future<List<Task>> fetchtasks();
  Future<Task> getTaskById(String id);
  Future removeTask(String id);
  Future updateTask(Task data, String id);
  Future addTask(Task data);



}
