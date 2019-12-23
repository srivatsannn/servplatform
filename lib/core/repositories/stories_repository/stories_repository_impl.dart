import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/stories_repository/stories_repository.dart';
import 'package:servplatform/core/models/story/story.dart';
import 'package:servplatform/core/stories/firebase/firebase_story.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class StoriesRepositoryImpl implements StoriesRepository {
  final _firebaseStory = locator<FirebaseStory>();
  List<Story> stories;

  @override
  Future<List<Story>> fetchStories() async {
    try {
      final storiesJsonData = await _firebaseStory
          .getDataCollection(FirebasePaths.recommended_stories);
      final stories =
          storiesJsonData.map((doc) => Story.fromMap(doc.data)).toList();
      return stories;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_story);
    }
  }

  Stream<QuerySnapshot> fetchStoriesAsStream() {
    return _firebaseStory
        .streamDataCollection(FirebasePaths.recommended_stories);
  }

  Future<Story> getStoryById(String id) async {
    var doc = await _firebaseStory.getDocumentById(
        FirebasePaths.recommended_stories, id);
    return Story.fromMap(doc.data);
  }

  Future removeStory(String id) async {
    await _firebaseStory.removeDocument(
        FirebasePaths.recommended_stories, id);
    return;
  }

  Future updateStory(Story data, String id) async {
    await _firebaseStory.updateDocument(
        FirebasePaths.recommended_stories, data.toMap(), id);
    return;
  }

  Future addStory(Story data) async {
    var result = await _firebaseStory.addDocument(
        FirebasePaths.recommended_stories, data.toMap());

    return;
  }
}
