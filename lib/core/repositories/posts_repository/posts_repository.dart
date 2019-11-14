import 'package:servplatform/core/serializers/post.dart';

abstract class PostsRepository {
  Future<List<Post>> fetchPosts();
}
