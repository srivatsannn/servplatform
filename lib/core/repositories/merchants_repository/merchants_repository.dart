import 'package:servplatform/core/models/merchant/merchant.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class MerchatsRepository {
  Future<List<Merchant>> fetchMerchants();
}
