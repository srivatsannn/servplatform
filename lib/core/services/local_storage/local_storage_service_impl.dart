import 'package:servplatform/core/constant/local_storage_keys.dart';
import 'package:hive/hive.dart';
import 'package:servplatform/core/services/local_storage/local_storage_service.dart';
import 'package:servplatform/core/utils/file_utils.dart' as file_utils;
import 'package:servplatform/core/utils/logger.dart';

class LocalStorageServiceImpl implements LocalStorageService {


  Future<void> init() async {
    try {
      final path = await file_utils.getApplicationDocumentsDirectoryPath();
      Hive.init(path);

    } on HiveError catch (e) {
      Logger.w('LocalStorageService: ${e.message}', e: e, s: e.stackTrace);
    }

  }
}
