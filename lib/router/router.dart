import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../feature/chat/ui/chat_page.dart';

part 'router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  final router = GoRouter(
    initialLocation: '/',
    routes: $appRoutes,
  );
  ref.onDispose(router.dispose);
  return router;
}

@TypedGoRoute<ChatRoute>(
  path: '/',
)
class ChatRoute extends GoRouteData {
  const ChatRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChatPage();
  }
}
