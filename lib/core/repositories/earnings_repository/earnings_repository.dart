import 'package:servplatform/core/models/earning/earning.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class EarningsRepository {
  Future<List<Earning>> fetchEarnings();
}
