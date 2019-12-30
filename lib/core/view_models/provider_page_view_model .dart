import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/provider_page/provider_page.dart';
import 'package:servplatform/core/repositories/provider_pages_repository/provider_pages_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class ProviderPageViewModel extends BaseViewModel {
  final _providersRepository = locator<ProvidersRepository>();

  List<Provider> _providers = [];
  List<Provider> get providers => _providers;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedProviders =
          await _providersRepository.fetchProviders();
      _providers = fetchedProviders.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
