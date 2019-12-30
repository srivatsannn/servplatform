import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/menu/menu.dart';
import 'package:servplatform/core/repositories/menus_repository/menus_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class MenuViewModel extends BaseViewModel {
  final _usersRepository = locator<UsersRepository>();

  List<User> _users = [];
  List<User> get menus => _users;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedUsers = await _usersRepository.fetchUsers();
      _users = fetchedUsers.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
