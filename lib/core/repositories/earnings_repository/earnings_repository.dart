import 'package:servplatform/core/models/earning/earning.dart';

abstract class EarningsRepository {
  Future<List<Earning>> fetchEarnings();
  Future<Earning> getEarningById(String id) ;
  Future removeEarning(String id);
  Future updateEarning(Earning data, String id);
  Future addEarning(Earning data);

}
