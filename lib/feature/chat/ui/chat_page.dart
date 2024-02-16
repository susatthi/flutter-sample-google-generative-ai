import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/room.dart';
import '../state/user.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Generative AI'),
      ),
      body: const SafeArea(
        child: _Body(),
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(chatUserProvider);
    final roomProvider = chatRoomNotifierProvider(user: user);
    final messages = ref.watch(roomProvider);
    return Chat(
      user: user,
      messages: messages,
      onSendPressed: (text) =>
          ref.read(roomProvider.notifier).sendMessage(text.text),
    );
  }
}
