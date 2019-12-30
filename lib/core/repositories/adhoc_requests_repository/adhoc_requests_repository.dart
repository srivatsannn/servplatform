import 'package:servplatform/core/models/adhoc_request/adhoc_request.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class AdhocRequestsRepository {
  Future<List<AdhocRequest>> fetchAdhoc_requests();
}
