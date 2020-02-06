import 'package:get_it/get_it.dart';
import 'package:servplatform/core/repositories/adhoc_requests_repository/adhoc_requests_repository.dart';
import 'package:servplatform/core/repositories/adhoc_requests_repository/adhoc_requests_repository_impl.dart';
import 'package:servplatform/core/repositories/agents_repository/agents_repository.dart';
import 'package:servplatform/core/repositories/agents_repository/agents_repository_impl.dart';
import 'package:servplatform/core/repositories/carts_repository/carts_repository.dart';
import 'package:servplatform/core/repositories/carts_repository/carts_repository_impl.dart';
import 'package:servplatform/core/repositories/categories_repository/categories_repository.dart';
import 'package:servplatform/core/repositories/categories_repository/categories_repository_impl.dart';
import 'package:servplatform/core/repositories/chats_repository/chats_repository.dart';
import 'package:servplatform/core/repositories/chats_repository/chats_repository_impl.dart';
import 'package:servplatform/core/repositories/earnings_repository/earnings_repository.dart';
import 'package:servplatform/core/repositories/earnings_repository/earnings_repository_impl.dart';
import 'package:servplatform/core/repositories/merchants_repository/merchants_repository.dart';
import 'package:servplatform/core/repositories/merchants_repository/merchants_repository_impl.dart';
import 'package:servplatform/core/repositories/orders_repository/orders_repository.dart';
import 'package:servplatform/core/repositories/orders_repository/orders_repository_impl.dart';
import 'package:servplatform/core/repositories/providers_repository/providers_repository.dart';
import 'package:servplatform/core/repositories/providers_repository/providers_repository_impl.dart';
import 'package:servplatform/core/repositories/reviews_repository/reviews_repository.dart';
import 'package:servplatform/core/repositories/reviews_repository/reviews_repository_impl.dart';
import 'package:servplatform/core/repositories/stories_repository/stories_repository.dart';
import 'package:servplatform/core/repositories/stories_repository/stories_repository_impl.dart';
import 'package:servplatform/core/repositories/tasks_repository/tasks_repository.dart';
import 'package:servplatform/core/repositories/tasks_repository/tasks_repository_impl.dart';
import 'package:servplatform/core/repositories/teams_repository/teams_repository.dart';
import 'package:servplatform/core/repositories/teams_repository/teams_repository_impl.dart';
import 'package:servplatform/core/services/http/http_service.dart';
import 'package:servplatform/core/services/http/http_service_impl.dart';
import 'package:servplatform/core/services/key_storage/key_storage_service.dart';
import 'package:servplatform/core/services/key_storage/key_storage_service_impl.dart';
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

  

  locator.registerLazySingleton<ServicesRepository>(
    () => ServicesRepositoryImpl(),
  );
  locator.registerLazySingleton<AdhocRequestsRepository>(
    () => AdhocRequestsRepositoryImpl(),
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
  locator.registerLazySingleton<ChatsRepository>(
    () => ChatsRepositoryImpl(),
  );

  locator.registerLazySingleton<EarningsRepository>(
    () => EarningsRepositoryImpl(),
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
  locator.registerLazySingleton<UsersRepository>(
    () => UsersRepositoryImpl(),
  );
}
