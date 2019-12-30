import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/merchant_home/merchant_home.dart';
import 'package:servplatform/core/repositories/merchant_homes_repository/merchant_homes_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';


class MerchantHomeViewModel extends BaseViewModel {
  final _merchantHomesRepository = locator<MerchantHomesRepository>();

  List<MerchantHome> _merchantHomes = [];
  List<MerchantHome> get merchantHomes => _merchantHomes;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedMerchantHomes =
          await _merchantHomesRepository.fetchMerchantHomes();
      _merchantHomes = fetchedMerchantHomes.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
