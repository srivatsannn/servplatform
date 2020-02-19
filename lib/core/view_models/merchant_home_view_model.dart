import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/merchant/merchant.dart';
import 'package:servplatform/core/models/service/service.dart';
import 'package:servplatform/core/models/user/user.dart';
import 'package:servplatform/core/repositories/merchants_repository/merchants_repository.dart';
import 'package:servplatform/core/repositories/services_repository/services_repository.dart';
import 'package:servplatform/core/repositories/users_repository/users_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class MerchantHomeViewModel extends BaseViewModel {
  final _merchantsRepository = locator<MerchantsRepository>();
    final _usersRepository = locator<UsersRepository>();
      final _servicesRepository = locator<ServicesRepository>();



  List<Merchant> _merchants = [];
  List<Merchant> get merchants => _merchants;

  List<Service> _services = [];
  List<Service> get services => _services;

  
  /* List<Task> get tasks => _tasks;
  List<Provider>
 */

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedMerchants = await _merchantsRepository.fetchMerchants();
      _merchants = fetchedMerchants.take(5).toList();



      final String userId = 'mg8519';
      final User _user = await _usersRepository.getUserById(userId);

      final recommended_services = _user.recommended_services;
      for (var serviceKey in recommended_services) {
        Service serviceItem =
            await _servicesRepository.getServiceById(serviceKey);
        print(serviceItem.toJson());
        _services.add(serviceItem);
      }
      print("printing services");
      print(_services);

      
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);


  }
}

class _tasks {
}
