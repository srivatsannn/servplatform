import 'package:servplatform/core/models/adhoc_request/adhoc_request.dart';

abstract class AdhocRequestsRepository {
  Future<List<AdhocRequest>> fetchAdhoc_requests();
}
