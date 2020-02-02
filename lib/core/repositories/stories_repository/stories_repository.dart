import 'package:servplatform/core/models/story/story.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class StoriesRepository {
  Future<List<Story>> fetchStories();
  Future<Story> getStoryById(String id);
  Future removeStory(String id) ;
  Future updateStory(Story data, String id);
  Future addStory(Story data);
}
