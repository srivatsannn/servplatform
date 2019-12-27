import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/exceptions/repository_exception.dart';
import 'package:servplatform/core/models/chat/chat.dart';
import 'package:servplatform/core/repositories/chats_repository/chats_repository.dart';
import 'package:servplatform/core/view_models/base_view_model.dart';
import 'package:servplatform/locator.dart';

class ChatViewModel extends BaseViewModel {
  final _chatsRepository = locator<ChatsRepository>();

  List<Chat> _chats = [];
  List<Chat> get chats => _chats;

  Future<void> init() async {
    setState(ViewState.Busy);
    try {
      final fetchedChats = await _chatsRepository.fetchChats();
      _chats = fetchedChats.take(5).toList();
    } on RepositoryException {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
