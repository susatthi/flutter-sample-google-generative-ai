import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'bot.dart';

part 'room.g.dart';

@riverpod
class ChatRoomNotifier extends _$ChatRoomNotifier {
  @override
  List<types.Message> build({
    required User user,
  }) {
    return [];
  }

  Future<void> sendMessage(String text) async {
    _addMessage(user, text);

    // ボットにメッセージを送信して返信を受け取る
    final bot = ref.read(chatBotProvider);
    try {
      final chatSession = ref.read(chatBotChatSessionProvider);
      final response = await chatSession.sendMessage(Content.text(text));
      final reply = response.text ?? 'エラーが発生しました';
      _addMessage(bot, reply);
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      _addMessage(bot, e.toString());
    }
  }

  void _addMessage(User author, String text) {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final message = types.TextMessage(
      author: author,
      id: timestamp.toString(),
      createdAt: timestamp,
      text: text,
    );
    state = [message, ...state];
  }
}
