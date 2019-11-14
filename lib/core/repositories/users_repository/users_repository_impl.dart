import 'package:servplatform/core/constant/api_routes.dart';
import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/hive_models/user_h.dart';
import 'package:servplatform/core/repositories/users_repository/users_repository.dart';
import 'package:servplatform/core/serializers/user.dart';
import 'package:servplatform/core/services/connectivity/connectivity_service.dart';
import 'package:servplatform/core/services/http/http_service.dart';
import 'package:servplatform/core/services/local_storage/local_storage_service.dart';
import 'package:servplatform/locator.dart';

class UsersRepositoryImpl implements UsersRepository {
  final _httpService = locator<HttpService>();
  final _localStorageService = locator<LocalStorageService>();
  final _connectionService = locator<ConnectivityService>();

  @override
  Future<User> fetchUser(int userId) async {
    try {
      if (await _connectionService.isConnected()) {
        final user = await _fetchUserRemotely(userId);
        await _storeUserLocally(user);

        return user;
      } else {
        return _fetchUserLocally(userId);
      }
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_user);
    }
  }

  Future<User> _fetchUserRemotely(int userId) async {
    final postsMap = await _httpService.getHttp('${ApiRoutes.users}/$userId')
        as Map<String, dynamic>;

    final user = User.fromMap(postsMap);
    return user;
  }

  Future<void> _storeUserLocally(User user) async {
    await _localStorageService.usersBox.put(user.id, UserH.fromUser(user));
  }

  User _fetchUserLocally(int userId) {
    final userH = _localStorageService.usersBox.get(userId);
    if (userH == null) {
      throw RepositoryException(RepositoryExceptionMessages.user_local);
    }

    return User.fromMap(userH.toMap());
  }
}
