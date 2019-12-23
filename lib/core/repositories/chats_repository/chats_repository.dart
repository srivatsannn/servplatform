import 'package:servplatform/core/models/chat/chat.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

abstract class ChatsRepository {
  Future<List<Chat>> fetchChats();
}
