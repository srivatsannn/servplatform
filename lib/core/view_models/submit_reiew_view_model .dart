import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/submit_review/submit_review.dart';
import 'package:servplatform/core/repositories/submit_reviews_repository/submit_reviews_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

//reviews
class SubmitReviewViewModel extends BaseViewModel {
  final _reviewsRepository = locator<ReviewsRepository>();

  List<Review> _reviews = [];
  List<Review> get reviews => _reviews;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedReviews =
          await _reviewsRepository.fetchReviews();
      _reviews = fetchedReviews.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
