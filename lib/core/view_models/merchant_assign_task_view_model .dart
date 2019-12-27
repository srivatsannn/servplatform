import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/merchant_assign_task/merchant_assign_task.dart';
import 'package:servplatform/core/repositories/merchant_assign_tasks_repository/merchant_assign_tasks_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class MerchantAssignTaskViewModel extends BaseViewModel {
  final _merchantAssignTasksRepository = locator<MerchantAssignTasksRepository>();

  List<MerchantAssignTask> _merchantAssignTasks = [];
  List<MerchantAsignTask> get merchantAssignTasks => _merchantAssignTasks;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedMerchantAssignTasks = await _merchantAssignTasksRepository.fetchMerchantAssigntasks();
      _merchantAssignTasks = fetchedMerchantAssignTasks.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
