import 'package:servplatform/core/models/chat/chat.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class ChatsRepository {
  Future<List<Chat>> fetchChats();
  Future<Chat> getChatById(String id);
  Future removeChat(String id);
  Future updateChat(Chat data, String id);
  Future addChat(Chat data);

}
