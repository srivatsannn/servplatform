import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/search/search.dart';
import 'package:servplatform/core/repositories/searches_repository/searches_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

//users
class SearchViewModel extends BaseViewModel {
  final _usersRepository = locator<UsersRepository>();

  List<User> _users = [];
  List<User> get users => _users;

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
