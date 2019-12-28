import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/submit_review/submit_review.dart';
import 'package:servplatform/core/repositories/submit_reviews_repository/submit_reviews_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class SubmitReviewViewModel extends BaseViewModel {
  final _submitReviewsRepository = locator<SubmitReviewsRepository>();

  List<SubmitReview> _submitReviews = [];
  List<SubmitReview> get submitreviews => _submitReviews;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedSubmitReviews =
          await _submitReviewsRepository.fetchSubmitReviews();
      _submitReviews = fetchedSubmitReviews.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
