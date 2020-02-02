import 'package:servplatform/core/models/user/user.dart';

abstract class UsersRepository {
  Future<List<User>> fetchUsers();
  Future<User> getUserById(String id);
  Future removeUser(String id) ;
  Future updateUser(User data, String id);
  Future addUser(User data);


  
}
