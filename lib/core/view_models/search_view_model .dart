import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/search/search.dart';
import 'package:servplatform/core/repositories/searches_repository/searches_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class SearchViewModel extends BaseViewModel {
  final _searchesRepository = locator<SearchesRepository>();

  List<Search> _searches = [];
  List<Search> get searches => _searches;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedSearches = await _searchesRepository.fetchSearches();
      _searches = fetchedSearches.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
