import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/google_generative_ai.dart';

part 'bot.g.dart';

@riverpod
types.User chatBot(ChatBotRef ref) {
  return const types.User(
    id: 'bot',
  );
}

@riverpod
ChatSession chatBotChatSession(ChatBotChatSessionRef ref) {
  final model = ref.watch(genemiProModelProvider);
  return model.startChat();
}
