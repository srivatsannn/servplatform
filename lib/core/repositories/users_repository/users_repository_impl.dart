import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:servplatform/core/data_sources/users/users_local_data_source.dart';
import 'package:servplatform/core/data_sources/users/users_remote_data_source.dart';
import 'package:servplatform/core/exceptions/cache_exception.dart';
import 'package:servplatform/core/exceptions/network_exception.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/user/user.dart';
import 'package:servplatform/core/repositories/users_repository/users_repository.dart';
import 'package:servplatform/core/services/connectivity/connectivity_service.dart';
import 'package:servplatform/core/utils/logger.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersRemoteDataSource remoteDataSource;
  final UsersLocalDataSource localDataSource;
  final ConnectivityService connectivityService;

  UsersRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.connectivityService,
  });

  @override
  Future<User> fetchUser(int uid) async {
    if (uid == null) {
      throw RepositoryException('uid must not be null');
    }

    try {
      if (await connectivityService.isConnected) {
        final user = await remoteDataSource.fetchUser(uid);
        await localDataSource.cacheUser(user);
        return user;
      } else {
        return localDataSource.fetchUser(uid);
      }
    } on NetworkException catch (e) {
      Logger.e('Failed to fetch posts remotely');
      throw RepositoryException(e.message);
    } on CacheException catch (e) {
      Logger.e('Failed to fetch posts locally');
      throw RepositoryException(e.message);
    }
  }
}
