// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_generative_ai.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$generativeAiApiKeyHash() =>
    r'9f603604cb993d48c245b8e8ff0d1145d8396927';

/// See also [generativeAiApiKey].
@ProviderFor(generativeAiApiKey)
final generativeAiApiKeyProvider = AutoDisposeProvider<String>.internal(
  generativeAiApiKey,
  name: r'generativeAiApiKeyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$generativeAiApiKeyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GenerativeAiApiKeyRef = AutoDisposeProviderRef<String>;
String _$generativeModelHash() => r'd9d697ae46e74e200c804bf31a65c7ea00f9354c';

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

/// See also [generativeModel].
@ProviderFor(generativeModel)
const generativeModelProvider = GenerativeModelFamily();

/// See also [generativeModel].
class GenerativeModelFamily extends Family<GenerativeModel> {
  /// See also [generativeModel].
  const GenerativeModelFamily();

  /// See also [generativeModel].
  GenerativeModelProvider call({
    required String model,
  }) {
    return GenerativeModelProvider(
      model: model,
    );
  }

  @override
  GenerativeModelProvider getProviderOverride(
    covariant GenerativeModelProvider provider,
  ) {
    return call(
      model: provider.model,
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
  String? get name => r'generativeModelProvider';
}

/// See also [generativeModel].
class GenerativeModelProvider extends AutoDisposeProvider<GenerativeModel> {
  /// See also [generativeModel].
  GenerativeModelProvider({
    required String model,
  }) : this._internal(
          (ref) => generativeModel(
            ref as GenerativeModelRef,
            model: model,
          ),
          from: generativeModelProvider,
          name: r'generativeModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$generativeModelHash,
          dependencies: GenerativeModelFamily._dependencies,
          allTransitiveDependencies:
              GenerativeModelFamily._allTransitiveDependencies,
          model: model,
        );

  GenerativeModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.model,
  }) : super.internal();

  final String model;

  @override
  Override overrideWith(
    GenerativeModel Function(GenerativeModelRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenerativeModelProvider._internal(
        (ref) => create(ref as GenerativeModelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        model: model,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<GenerativeModel> createElement() {
    return _GenerativeModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenerativeModelProvider && other.model == model;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, model.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GenerativeModelRef on AutoDisposeProviderRef<GenerativeModel> {
  /// The parameter `model` of this provider.
  String get model;
}

class _GenerativeModelProviderElement
    extends AutoDisposeProviderElement<GenerativeModel>
    with GenerativeModelRef {
  _GenerativeModelProviderElement(super.provider);

  @override
  String get model => (origin as GenerativeModelProvider).model;
}

String _$generateContentHash() => r'5d8ef208dd757da579edcf211cdc456c03bfb115';

/// See also [generateContent].
@ProviderFor(generateContent)
const generateContentProvider = GenerateContentFamily();

/// See also [generateContent].
class GenerateContentFamily
    extends Family<AsyncValue<GenerateContentResponse>> {
  /// See also [generateContent].
  const GenerateContentFamily();

  /// See also [generateContent].
  GenerateContentProvider call({
    required String prompt,
  }) {
    return GenerateContentProvider(
      prompt: prompt,
    );
  }

  @override
  GenerateContentProvider getProviderOverride(
    covariant GenerateContentProvider provider,
  ) {
    return call(
      prompt: provider.prompt,
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
  String? get name => r'generateContentProvider';
}

/// See also [generateContent].
class GenerateContentProvider
    extends AutoDisposeFutureProvider<GenerateContentResponse> {
  /// See also [generateContent].
  GenerateContentProvider({
    required String prompt,
  }) : this._internal(
          (ref) => generateContent(
            ref as GenerateContentRef,
            prompt: prompt,
          ),
          from: generateContentProvider,
          name: r'generateContentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$generateContentHash,
          dependencies: GenerateContentFamily._dependencies,
          allTransitiveDependencies:
              GenerateContentFamily._allTransitiveDependencies,
          prompt: prompt,
        );

  GenerateContentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.prompt,
  }) : super.internal();

  final String prompt;

  @override
  Override overrideWith(
    FutureOr<GenerateContentResponse> Function(GenerateContentRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenerateContentProvider._internal(
        (ref) => create(ref as GenerateContentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        prompt: prompt,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GenerateContentResponse> createElement() {
    return _GenerateContentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenerateContentProvider && other.prompt == prompt;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, prompt.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GenerateContentRef
    on AutoDisposeFutureProviderRef<GenerateContentResponse> {
  /// The parameter `prompt` of this provider.
  String get prompt;
}

class _GenerateContentProviderElement
    extends AutoDisposeFutureProviderElement<GenerateContentResponse>
    with GenerateContentRef {
  _GenerateContentProviderElement(super.provider);

  @override
  String get prompt => (origin as GenerateContentProvider).prompt;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
