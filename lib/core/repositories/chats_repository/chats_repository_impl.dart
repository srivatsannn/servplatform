import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:servplatform/core/constant/firebase_paths.dart';

import 'package:servplatform/core/constant/repository_exception_messages.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';

import 'package:servplatform/core/repositories/chats_repository/chats_repository.dart';
import 'package:servplatform/core/models/chat/chat.dart';
import 'package:servplatform/core/services/firebase/firebase_service.dart';

import 'package:servplatform/locator.dart';

import '../../../locator.dart';

class ChatsRepositoryImpl implements ChatsRepository {
  final _firebaseChat = locator<FirebaseService>();
  List<Chat> chats;

  @override
  Future<List<Chat>> fetchChats() async {
    try {
      final chatsJsonData =
          await _firebaseChat.getDataCollection(FirebasePaths.chats);
      final chats = chatsJsonData.map((doc) => Chat.fromMap(doc.data)).toList();
      return chats;
    } catch (e) {
      throw RepositoryException(RepositoryExceptionMessages.general_service);
    }
  }

  Stream<QuerySnapshot> fetchChatsAsStream() {
    return _firebaseChat.streamDataCollection(FirebasePaths.chats);
  }

  Future<Chat> getChatById(String id) async {
    var doc = await _firebaseChat.getDocumentById(FirebasePaths.chats, id);
    return Chat.fromMap(doc.data);
  }

  Future removeChat(String id) async {
    await _firebaseChat.removeDocument(FirebasePaths.chats, id);
    return;
  }

  Future updateChat(Chat data, String id) async {
    await _firebaseChat.updateDocument(FirebasePaths.chats, data.toMap(), id);
    return;
  }

  Future addChat(Chat data) async {
    var result =
        await _firebaseChat.addDocument(FirebasePaths.chats, data.toMap());

    return;
  }
}
