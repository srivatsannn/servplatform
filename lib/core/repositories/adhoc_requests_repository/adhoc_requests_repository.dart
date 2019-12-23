import 'package:servplatform/core/models/adhoc_request/adhoc_request.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class Adhoc_requestsRepository {
  Future<List<Adhoc_request>> fetchAdhoc_requests();
}
