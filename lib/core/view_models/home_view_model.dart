import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/post/post.dart';
import 'package:servplatform/core/repositories/posts_repository/posts_repository.dart';
import 'package:servplatform/core/utils/logger.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class HomeViewModel extends BaseViewModel {
  final _postsRepository = locator<PostsRepository>();

  List<Post> _posts = [];
  List<Post> get posts => _posts;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedPosts = await _postsRepository.fetchPosts();
      _posts = fetchedPosts.take(20).toList();
    } on RepositoryException catch (e) {
      Logger.e('${e.message}', s: e.stackTrace);
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
