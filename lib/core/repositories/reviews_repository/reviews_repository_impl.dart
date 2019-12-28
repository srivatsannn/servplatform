import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/reviews_repository/reviews_repository.dart';
import 'package:servplatform/core/models/review/review.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class ReviewsRepositoryImpl implements ReviewsRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Review> reviews;

  @override
  Future<List<Review>> fetchReviews() async {
    try {
      final reviewsJsonData =
          await _firebaseService.getDataCollection(FirebasePaths.reviews);
      final reviews =
          reviewsJsonData.map((doc) => Review.fromMap(doc.data)).toList();
      return reviews;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchReviewsAsStream() {
    return _firebaseService.streamDataCollection(FirebasePaths.reviews);
  }

  Future<Review> getReviewById(String id) async {
    var doc = await _firebaseService.getDocumentById(FirebasePaths.reviews, id);
    return Review.fromMap(doc.data);
  }

  Future removeReview(String id) async {
    await _firebaseService.removeDocument(FirebasePaths.reviews, id);
    return;
  }

  Future updateReview(Review data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.reviews, data.toMap(), id);
    return;
  }

  Future addReview(Review data) async {
    var result =
        await _firebaseService.addDocument(FirebasePaths.reviews, data.toMap());

    return;
  }
}
