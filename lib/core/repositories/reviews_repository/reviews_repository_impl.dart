import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/reviews_repository/reviews_repository.dart';
import 'package:servplatform/core/models/review/review.dart';
import 'package:servplatform/core/reviews/firebase/firebase_review.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class ReviewsRepositoryImpl implements ReviewsRepository {
  final _firebaseReview = locator<FirebaseReview>();
  List<Review> reviews;

  @override
  Future<List<Review>> fetchReviews() async {
    try {
      final reviewsJsonData = await _firebaseReview
          .getDataCollection(FirebasePaths.recommended_reviews);
      final reviews =
          reviewsJsonData.map((doc) => Review.fromMap(doc.data)).toList();
      return reviews;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_review);
    }
  }

  Stream<QuerySnapshot> fetchReviewsAsStream() {
    return _firebaseReview
        .streamDataCollection(FirebasePaths.recommended_reviews);
  }

  Future<Review> getReviewById(String id) async {
    var doc = await _firebaseReview.getDocumentById(
        FirebasePaths.recommended_reviews, id);
    return Review.fromMap(doc.data);
  }

  Future removeReview(String id) async {
    await _firebaseReview.removeDocument(
        FirebasePaths.recommended_reviews, id);
    return;
  }

  Future updateReview(Review data, String id) async {
    await _firebaseReview.updateDocument(
        FirebasePaths.recommended_reviews, data.toMap(), id);
    return;
  }

  Future addReview(Review data) async {
    var result = await _firebaseReview.addDocument(
        FirebasePaths.recommended_reviews, data.toMap());

    return;
  }
}
