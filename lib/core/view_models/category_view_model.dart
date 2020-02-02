import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/category/category.dart';
import 'package:servplatform/core/repositories/categories_repository/categories_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class CategoryViewModel extends BaseViewModel {
  final _categoriesRepository = locator<CategoriesRepository>();

  List<Category> _categories = [];
  List<Category> get categories => _categories;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedCategories = await _categoriesRepository.fetchCategories();
      _categories = fetchedCategories.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
