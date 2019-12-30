import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/category_detail/category_detail.dart';
import 'package:servplatform/core/repositories/category_details_repository/category_details_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';


//category
class CategoryDetailViewModel extends BaseViewModel {
  final _categoryDetailsRepository = locator<CategoryDetailsRepository>();

  List<CategoryDetail> _categoryDetails = [];
  List<CategoryDetail> get categoryDetails => _categoryDetails;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedCategoryDetails =
          await _categoryDetailsRepository.fetchCategoryDetails();
      _categoryDetails = fetchedCategoryDetails.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
