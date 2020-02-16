import 'package:flutter/cupertino.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/user/user.dart';
import 'package:servplatform/core/repositories/users_repository/users_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

//user
class LocationInputViewModel extends BaseViewModel {
  final _usersRepository = locator<UsersRepository>();

  List<User> _users = [];
  List<User> get users => _users;

  final PanelController _pc = new PanelController();
  PanelController get pc => _pc;

  void onTapMenu(BuildContext context){
    if(_pc.isPanelClosed)
    {
      _pc.open();
    }
    else
    {
      _pc.close();
    }
  }


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
