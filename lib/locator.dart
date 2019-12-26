import 'package:get_it/get_it.dart';
import 'package:servplatform/core/data_sources/posts/posts_local_data_source.dart';
import 'package:servplatform/core/data_sources/posts/posts_remote_data_source.dart';
import 'package:servplatform/core/data_sources/users/users_local_data_source.dart';
import 'package:servplatform/core/data_sources/users/users_remote_data_source.dart';
import 'package:servplatform/core/services/http/http_service.dart';
import 'package:servplatform/core/services/http/http_service_impl.dart';
import 'package:servplatform/core/services/key_storage/key_storage_service.dart';
import 'package:servplatform/core/services/key_storage/key_storage_service_impl.dart';
import 'package:servplatform/core/repositories/posts_repository/posts_repository.dart';
import 'package:servplatform/core/repositories/posts_repository/posts_repository_impl.dart';
import 'package:servplatform/core/repositories/users_repository/users_repository.dart';
import 'package:servplatform/core/repositories/users_repository/users_repository_impl.dart';
import 'package:servplatform/core/repositories/services_repository/services_repository.dart';
import 'package:servplatform/core/repositories/services_repository/services_repository_impl.dart';
import 'package:servplatform/core/services/auth/auth_service.dart';
import 'package:servplatform/core/services/auth/auth_service_impl.dart';
import 'package:servplatform/core/services/connectivity/connectivity_service.dart';
import 'package:servplatform/core/services/connectivity/connectivity_service_impl.dart';
import 'package:servplatform/core/services/dialog/dialog_service.dart';
import 'package:servplatform/core/services/dialog/dialog_service_impl.dart';
import 'package:servplatform/core/services/hardware_info/hardware_info_service.dart';
import 'package:servplatform/core/services/hardware_info/hardware_info_service_impl.dart';
import 'package:servplatform/core/services/local_storage/local_storage_service.dart';
import 'package:servplatform/core/services/local_storage/local_storage_service_impl.dart';
import 'package:servplatform/core/services/navigation/navigation_service.dart';
import 'package:servplatform/core/services/navigation/navigation_service_impl.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';
import 'package:servplatform/core/services/firebase/firebase_service_impl.dart';

GetIt locator = GetIt.instance;

/// Setup function that is run before the App is run.
///   - Sets up singletons that can be called from anywhere
/// in the app by using locator<Service>() call.
///   - Also sets up factor methods for view models.
Future<void> setupLocator() async {
  // Services
  final instance = await KeyStorageServiceImpl.getInstance();
  locator.registerLazySingleton<KeyStorageService>(() => instance);

  locator.registerLazySingleton<NavigationService>(
    () => NavigationServiceImpl(),
  );
  locator.registerLazySingleton<HardwareInfoService>(
      () => HardwareInfoServiceImpl());
  locator.registerLazySingleton<ConnectivityService>(
    () => ConnectivityServiceImpl(),
  );
  locator.registerLazySingleton<DialogService>(() => DialogServiceImpl());
  locator.registerLazySingleton<AuthService>(
    () => AuthServiceImpl(keyStorageService: locator()),
  );
  locator.registerLazySingleton<LocalStorageService>(
    () => LocalStorageServiceImpl(),
  );
  locator.registerLazySingleton<HttpService>(() => HttpServiceImpl());
  locator.registerLazySingleton<FirebaseService>(
    () => FirebaseServiceImpl(),
  );

  // Data sources
  locator.registerLazySingleton<PostsLocalDataSource>(
    () => PostsLocalDataSourceImpl(localStorageService: locator()),
  );
  locator.registerLazySingleton<PostsRemoteDataSource>(
    () => PostsRemoteDataSourceImpl(httpService: locator()),
  );
  locator.registerLazySingleton<UsersLocalDataSource>(
    () => UsersLocalDataSourceImpl(localStorageService: locator()),
  );
  locator.registerLazySingleton<UsersRemoteDataSource>(
    () => UsersRemoteDataSourceImpl(httpService: locator()),
  );

  // Repositories
  locator.registerLazySingleton<PostsRepository>(
    () => PostsRepositoryImpl(
      localDataSource: locator(),
      connectivityService: locator(),
      remoteDataSource: locator(),
    ),
  );
  locator.registerLazySingleton<UsersRepository>(
    () => UsersRepositoryImpl(
      connectivityService: locator(),
      localDataSource: locator(),
      remoteDataSource: locator(),
    ),
  );
  locator.registerLazySingleton<ServicesRepository>(
    () => ServicesRepositoryImpl(),
  );
   locator.registerLazySingleton<Adhoc_requestsRepository>(
    () => Adhoc_requestsRepositoryImpl(),
  );
   locator.registerLazySingleton<AgentsRepository>(
    () => AgentsRepositoryImpl(),
  );
   locator.registerLazySingleton<CartsRepository>(
    () => CartsRepositoryImpl(),
  );
  locator.registerLazySingleton<CategoriesRepository>(
    () => CategoriesRepositoryImpl(),
  );
  locator.registerLazySingleton<MerchantsRepository>(
    () => MerchantsRepositoryImpl(),
  );
  locator.registerLazySingleton<OrdersRepository>(
    () => OrdersRepositoryImpl(),
  );
  locator.registerLazySingleton<ChatRepository>(
    () => ChatsRepositoryImpl(),
  );
  locator.registerLazySingleton<EarningRepository>(
    () => EarnngsRepositoryImpl(),
  );
  locator.registerLazySingleton<ProvidersRepository>(
    () => ProvidersRepositoryImpl(),
  );
  locator.registerLazySingleton<ReviewsRepository>(
    () => ReviewsRepositoryImpl(),
  );
  locator.registerLazySingleton<StoriesRepository>(
    () => StoriesRepositoryImpl(),
  );
  locator.registerLazySingleton<TasksRepository>(
    () => TasksRepositoryImpl(),
  );
  locator.registerLazySingleton<TeamsRepository>(
    () => TeamsRepositoryImpl(),
  );
}
