import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/adhoc_request/adhoc_request.dart';
import 'package:servplatform/core/repositories/adhoc_requests_repository/adhoc_requests_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class AdhocRequestViewModel extends BaseViewModel {
  final _adhocRequestsRepository = locator<AdhocRequestsRepository>();

  List<AdhocRequest> _adhocRequests = [];
  List<AdhocRequest> get adhocRequests => _adhocRequests;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedAdhocRequests = await _adhocrequestsRepository.fetchAdhocRequests();
      _adhocRequests = fetchedAdhocRequests.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
