// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatRoomNotifierHash() => r'69f1a6ee49ca759e29133cc6389995178683c8c2';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ChatRoomNotifier
    extends BuildlessAutoDisposeNotifier<List<types.Message>> {
  late final User user;

  List<types.Message> build({
    required User user,
  });
}

/// See also [ChatRoomNotifier].
@ProviderFor(ChatRoomNotifier)
const chatRoomNotifierProvider = ChatRoomNotifierFamily();

/// See also [ChatRoomNotifier].
class ChatRoomNotifierFamily extends Family<List<types.Message>> {
  /// See also [ChatRoomNotifier].
  const ChatRoomNotifierFamily();

  /// See also [ChatRoomNotifier].
  ChatRoomNotifierProvider call({
    required User user,
  }) {
    return ChatRoomNotifierProvider(
      user: user,
    );
  }

  @override
  ChatRoomNotifierProvider getProviderOverride(
    covariant ChatRoomNotifierProvider provider,
  ) {
    return call(
      user: provider.user,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'chatRoomNotifierProvider';
}

/// See also [ChatRoomNotifier].
class ChatRoomNotifierProvider extends AutoDisposeNotifierProviderImpl<
    ChatRoomNotifier, List<types.Message>> {
  /// See also [ChatRoomNotifier].
  ChatRoomNotifierProvider({
    required User user,
  }) : this._internal(
          () => ChatRoomNotifier()..user = user,
          from: chatRoomNotifierProvider,
          name: r'chatRoomNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatRoomNotifierHash,
          dependencies: ChatRoomNotifierFamily._dependencies,
          allTransitiveDependencies:
              ChatRoomNotifierFamily._allTransitiveDependencies,
          user: user,
        );

  ChatRoomNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.user,
  }) : super.internal();

  final User user;

  @override
  List<types.Message> runNotifierBuild(
    covariant ChatRoomNotifier notifier,
  ) {
    return notifier.build(
      user: user,
    );
  }

  @override
  Override overrideWith(ChatRoomNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatRoomNotifierProvider._internal(
        () => create()..user = user,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        user: user,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ChatRoomNotifier, List<types.Message>>
      createElement() {
    return _ChatRoomNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatRoomNotifierProvider && other.user == user;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, user.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChatRoomNotifierRef
    on AutoDisposeNotifierProviderRef<List<types.Message>> {
  /// The parameter `user` of this provider.
  User get user;
}

class _ChatRoomNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<ChatRoomNotifier,
        List<types.Message>> with ChatRoomNotifierRef {
  _ChatRoomNotifierProviderElement(super.provider);

  @override
  User get user => (origin as ChatRoomNotifierProvider).user;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
