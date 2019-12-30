import 'package:servplatform/core/constant/local_storage_keys.dart';
import 'package:hive/hive.dart';
import 'package:servplatform/core/models/post/post_h.dart';
import 'package:servplatform/core/services/local_storage/local_storage_service.dart';
import 'package:servplatform/core/utils/file_utils.dart' as file_utils;
import 'package:servplatform/core/utils/logger.dart';

class LocalStorageServiceImpl implements LocalStorageService {
  Box<PostH> _postsBox;
  Box<PostH> get postsBox => _postsBox;

  Future<void> init() async {
    try {
      final path = await file_utils.getApplicationDocumentsDirectoryPath();
      Hive.init(path);

      Hive.registerAdapter(PostHAdapter(), 1);
    } on HiveError catch (e) {
      Logger.w('LocalStorageService: ${e.message}', e: e, s: e.stackTrace);
    }

    _postsBox = await Hive.openBox<PostH>(LocalStorageKeys.posts);
  }
}
