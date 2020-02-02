import 'package:servplatform/core/models/review/review.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class ReviewsRepository {
  Future<List<Review>> fetchReviews();
  Future<Review> getReviewById(String id);
  Future removeReview(String id) ;
  Future updateReview(Review data, String id);
  Future addReview(Review data) ;



}
