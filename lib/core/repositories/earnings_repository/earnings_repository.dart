import 'package:servplatform/core/models/earning/earning.dart';

abstract class EarningsRepository {
  Future<List<Earning>> fetchEarnings();
}
