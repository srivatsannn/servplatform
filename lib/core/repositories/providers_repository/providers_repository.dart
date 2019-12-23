import 'package:servplatform/core/models/provider/provider.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class ProvidersRepository {
  Future<List<Provider>> fetchProviders();
}
