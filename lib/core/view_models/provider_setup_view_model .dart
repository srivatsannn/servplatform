import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/provider_setup/provider_setup.dart';
import 'package:servplatform/core/repositories/provider_setups_repository/provider_setups_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

//provider
class ProviderSetupViewModel extends BaseViewModel {
  final _providersRepository = locator<ProvidersRepository>();

  List<Provider> _providerSetups = [];
  List<Provider> get providers => _providers;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedProviders = await _providersRepository.fetchProviders();
      _providers = fetchedProviders.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
