import 'package:servplatform/core/models/task/task.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class TasksRepository {
  Future<List<Task>> fetchtasks();
}
