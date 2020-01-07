import 'package:servplatform/core/models/user/user.dart';

abstract class UsersRepository {
  Future<List<User>> fetchUsers();
  Future<User> getUserById(String id);
}
