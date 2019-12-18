import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/post/post.dart';
import 'package:servplatform/core/models/user/user.dart';
import 'package:servplatform/core/repositories/users_repository/users_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class PostDetailsViewModel extends BaseViewModel {
  final _usersRepository = locator<UsersRepository>();

  User _user;
  User get user => _user;

  Future<void> init(Post post) async {
    setState(ViewState.Busy);
    try {
      _user = await _usersRepository.fetchUser(post.userId);
      setState(ViewState.DataFetched);
    } on RepositoryException {
      setState(ViewState.Error);
    }
  }
}
