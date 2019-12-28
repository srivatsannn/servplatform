import 'package:hive/hive.dart';
import 'package:servplatform/core/models/post/post_h.dart';

abstract class LocalStorageService {
  Future<void> init();

  Box<PostH> get postsBox;

}
