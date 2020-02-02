import 'package:servplatform/core/models/merchant/merchant.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class MerchantsRepository {
  Future<List<Merchant>> fetchMerchants();
  Future<Merchant> getMerchantById(String id);
  Future removeMerchant(String id);
  Future updateMerchant(Merchant data, String id);
  Future addMerchant(Merchant data);
  


}
