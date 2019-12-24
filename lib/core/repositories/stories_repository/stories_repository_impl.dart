import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/stories_repository/stories_repository.dart';
import 'package:servplatform/core/models/story/story.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class StoriesRepositoryImpl implements StoriesRepository {
  final _firebaseService = locator<FirebaseService>();
  List<Story> stories;

  @override
  Future<List<Story>> fetchStories() async {
    try {
      final storiesJsonData = await _firebaseService
          .getDataCollection(FirebasePaths.stories);
      final stories =
          storiesJsonData.map((doc) => Story.fromMap(doc.data)).toList();
      return stories;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchStoriesAsStream() {
    return _firebaseService
        .streamDataCollection(FirebasePaths.stories);
  }

  Future<Story> getStoryById(String id) async {
    var doc = await _firebaseService.getDocumentById(
        FirebasePaths.stories, id);
    return Story.fromMap(doc.data);
  }

  Future removeStory(String id) async {
    await _firebaseService.removeDocument(
        FirebasePaths.stories, id);
    return;
  }

  Future updateStory(Story data, String id) async {
    await _firebaseService.updateDocument(
        FirebasePaths.stories, data.toMap(), id);
    return;
  }

  Future addStory(Story data) async {
    var result = await _firebaseService.addDocument(
        FirebasePaths.stories, data.toMap());

    return;
  }
}
