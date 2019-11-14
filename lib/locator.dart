import 'package:get_it/get_it.dart';
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
import 'package:servplatform/core/services/hardware/hardware_service.dart';
import 'package:servplatform/core/services/hardware/hardware_service_impl.dart';
import 'package:servplatform/core/services/http/http_service.dart';
import 'package:servplatform/core/services/http/http_service_impl.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';
import 'package:servplatform/core/services/firebase/firebase_service_impl.dart';
import 'package:servplatform/core/services/key_storage/key_storage_service.dart';
import 'package:servplatform/core/services/key_storage/key_storage_service_impl.dart';
import 'package:servplatform/core/services/local_storage/local_storage_service.dart';
import 'package:servplatform/core/services/local_storage/local_storage_service_impl.dart';
import 'package:servplatform/core/services/navigation/navigation_service.dart';
import 'package:servplatform/core/services/navigation/navigation_service_impl.dart';
import 'package:servplatform/core/ui_models/views/home_model.dart';
import 'package:servplatform/core/ui_models/views/login_model.dart';
import 'package:servplatform/core/ui_models/views/main_model.dart';
import 'package:servplatform/core/ui_models/views/post_details_model.dart';
import 'package:servplatform/core/ui_models/views/settings_model.dart';
import 'package:servplatform/core/ui_models/widgets/animated_list_item_model.dart';

GetIt locator = GetIt.instance;

/// Setup function that is run before the App is run.
///   - Sets up singletons that can be called from anywhere
/// in the app by using locator<Service>() call.
///   - Also sets up factor methods for view models.
Future<void> setupLocator() async {
  // Repositories
  locator.registerLazySingleton<PostsRepository>(() => PostsRepositoryImpl());
  locator.registerLazySingleton<ServicesRepository>(() => ServicesRepositoryImpl());

  locator.registerLazySingleton<UsersRepository>(() => UsersRepositoryImpl());

  // Services
  locator.registerLazySingleton<NavigationService>(
    () => NavigationServiceImpl(),
  );
  locator.registerLazySingleton<HardwareService>(() => HardwareServiceImpl());
  locator.registerLazySingleton<ConnectivityService>(
    () => ConnectivityServiceImpl(),
  );
  locator.registerLazySingleton<DialogService>(() => DialogServiceImpl());
  locator.registerLazySingleton<HttpService>(() => HttpServiceImpl());
  locator.registerLazySingleton<AuthService>(() => AuthServiceImpl());
  locator.registerLazySingleton<LocalStorageService>(
    () => LocalStorageServiceImpl(),
  );
  
  locator.registerLazySingleton<FirebaseService>(
    () => FirebaseServiceImpl(),
  );

  // View view models
  locator.registerFactory(() => HomeModel());
  locator.registerFactory(() => SettingsModel());
  locator.registerFactory(() => LoginModel());
  locator.registerFactory(() => MainModel());
  locator.registerFactory(() => PostDetailsModel());

  // Widget view models
  locator.registerFactory(() => AnimatedListItemModel());

  await initializeServices();
}

/// Initialize other services here that require additional code
/// to run before the services can be registered
Future<void> initializeServices() async {
  final instance = await KeyStorageServiceImpl.getInstance();
  locator.registerSingleton<KeyStorageService>(instance);
}
