import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/resolution/resolution.dart';
import 'package:servplatform/core/repositories/resolutions_repository/resolutions_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class ResolutionViewModel extends BaseViewModel {
  final _resolutionsRepository = locator<ResolutionsRepository>();

  List<Resolution> _resolutions = [];
  List<Resolution> get resolutions => _resoltions;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedResolutions =
          await _resolutionsRepository.fetchResolutions();
      _resoltions = fetchedResolutions.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
