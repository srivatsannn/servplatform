import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/tip_review/tip_review.dart';
import 'package:servplatform/core/repositories/tip_reviews_repository/tip_reviews_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class TipReviewViewModel extends BaseViewModel {
  final _tipReviewsRepository = locator<Tip_reviewsRepository>();

  List<TipReview> _tipReviews = [];
  List<TipReview> get tipReviews => _tipReviews;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedTipReviews = await _tipReviewsRepository.fetchTipReviews();
      _tipReviews = fetchedTipreviews.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
