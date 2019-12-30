import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/menu/menu.dart';
import 'package:servplatform/core/repositories/menus_repository/menus_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

//users
class MenuViewModel extends BaseViewModel {
  final _menusRepository = locator<MenusRepository>();

  List<Menu> _menus = [];
  List<Menu> get menus => _menus;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedMenus = await _menusRepository.fetchMenus();
      _menus = fetchedMenus.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
