import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ui/component/material.dart';
import '../state/room.dart';
import '../state/user.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('kboy'),
      ),
      body: const _Body(),
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
      showUserAvatars: true,
      showUserNames: true,
      emptyState: Center(
        child: Text(
          '今日は何をお手伝いしましょうか？',
          style: context.bodyLarge,
        ),
      ),
      theme: DefaultChatTheme(
        backgroundColor: context.background,
        errorColor: context.error,
        inputBackgroundColor: context.background,
        inputSurfaceTintColor: context.background,
        inputTextColor: context.inverseSurface,
        inputTextCursorColor: context.inverseSurface,
        inputTextDecoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        primaryColor: context.primary,
        secondaryColor: context.secondaryContainer,
        userAvatarNameColors: [context.onSecondaryContainer],
      ),
    );
  }
}
