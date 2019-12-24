import 'package:servplatform/core/models/merchant/merchant.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class MerchantsRepository {
  Future<List<Merchant>> fetchMerchants();
}
