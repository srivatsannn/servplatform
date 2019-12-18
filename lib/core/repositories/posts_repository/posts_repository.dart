import 'package:servplatform/core/models/post/post.dart';

abstract class PostsRepository {
  Future<List<Post>> fetchPosts();
}
