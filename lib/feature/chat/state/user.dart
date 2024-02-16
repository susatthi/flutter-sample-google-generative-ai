import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user.g.dart';

@riverpod
types.User chatUser(ChatUserRef ref) {
  return const types.User(
    id: 'user',
    imageUrl:
        'https://pbs.twimg.com/profile_images/1335856760972689408/Zeyo7jdq_bigger.jpg',
    firstName: '自分',
    lastName: '自分',
  );
}
