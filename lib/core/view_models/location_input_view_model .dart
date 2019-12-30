import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/location_input/location_input.dart';
import 'package:servplatform/core/repositories/location_inputs_repository/location_inputs_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class LocationInputViewModel extends BaseViewModel {
  final _usersRepository = locator<UsRepository>();

  List<User> _users = [];
  List<User> get users => _users;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedUsers =
          await _usersRepository.fetchUsers();
      _users = fetchedUsers.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
