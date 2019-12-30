import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/security/security.dart';
import 'package:servplatform/core/repositories/securities_repository/securities_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

//users
class SecurityViewModel extends BaseViewModel {
  final _securitiesRepository = locator<SecuritiesRepository>();

  List<Security> _securities = [];
  List<Security> get securities => _securities;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedSecurities = await _securitiesRepository.fetchSecurities();
      _securities = fetchedSecurities.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
