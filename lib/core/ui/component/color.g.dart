// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$seedColorHash() => r'd45536b6a339adf3f49f4f27fddf7444b5931042';

/// シードカラー
///
/// Copied from [seedColor].
@ProviderFor(seedColor)
final seedColorProvider = AutoDisposeProvider<Color>.internal(
  seedColor,
  name: r'seedColorProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$seedColorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SeedColorRef = AutoDisposeProviderRef<Color>;
String _$colorPaletteHash() => r'15c422255f9528f3745a3a7e995b11422fd3502d';

/// マテリアルカラー
///
/// Copied from [colorPalette].
@ProviderFor(colorPalette)
final colorPaletteProvider = AutoDisposeProvider<CorePalette>.internal(
  colorPalette,
  name: r'colorPaletteProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$colorPaletteHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ColorPaletteRef = AutoDisposeProviderRef<CorePalette>;
String _$materialSurfaceColorHash() =>
    r'3c5e2d9bce847075e20fc5b7cbc14183b7ba9bff';

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

/// マテリアルサーフェス
///
/// Copied from [materialSurfaceColor].
@ProviderFor(materialSurfaceColor)
const materialSurfaceColorProvider = MaterialSurfaceColorFamily();

/// マテリアルサーフェス
///
/// Copied from [materialSurfaceColor].
class MaterialSurfaceColorFamily extends Family<MaterialSurfaceColor> {
  /// マテリアルサーフェス
  ///
  /// Copied from [materialSurfaceColor].
  const MaterialSurfaceColorFamily();

  /// マテリアルサーフェス
  ///
  /// Copied from [materialSurfaceColor].
  MaterialSurfaceColorProvider call({
    required Brightness brightness,
  }) {
    return MaterialSurfaceColorProvider(
      brightness: brightness,
    );
  }

  @override
  MaterialSurfaceColorProvider getProviderOverride(
    covariant MaterialSurfaceColorProvider provider,
  ) {
    return call(
      brightness: provider.brightness,
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
  String? get name => r'materialSurfaceColorProvider';
}

/// マテリアルサーフェス
///
/// Copied from [materialSurfaceColor].
class MaterialSurfaceColorProvider
    extends AutoDisposeProvider<MaterialSurfaceColor> {
  /// マテリアルサーフェス
  ///
  /// Copied from [materialSurfaceColor].
  MaterialSurfaceColorProvider({
    required Brightness brightness,
  }) : this._internal(
          (ref) => materialSurfaceColor(
            ref as MaterialSurfaceColorRef,
            brightness: brightness,
          ),
          from: materialSurfaceColorProvider,
          name: r'materialSurfaceColorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$materialSurfaceColorHash,
          dependencies: MaterialSurfaceColorFamily._dependencies,
          allTransitiveDependencies:
              MaterialSurfaceColorFamily._allTransitiveDependencies,
          brightness: brightness,
        );

  MaterialSurfaceColorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.brightness,
  }) : super.internal();

  final Brightness brightness;

  @override
  Override overrideWith(
    MaterialSurfaceColor Function(MaterialSurfaceColorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MaterialSurfaceColorProvider._internal(
        (ref) => create(ref as MaterialSurfaceColorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        brightness: brightness,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<MaterialSurfaceColor> createElement() {
    return _MaterialSurfaceColorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MaterialSurfaceColorProvider &&
        other.brightness == brightness;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, brightness.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MaterialSurfaceColorRef on AutoDisposeProviderRef<MaterialSurfaceColor> {
  /// The parameter `brightness` of this provider.
  Brightness get brightness;
}

class _MaterialSurfaceColorProviderElement
    extends AutoDisposeProviderElement<MaterialSurfaceColor>
    with MaterialSurfaceColorRef {
  _MaterialSurfaceColorProviderElement(super.provider);

  @override
  Brightness get brightness =>
      (origin as MaterialSurfaceColorProvider).brightness;
}

String _$colorSchemeHash() => r'de43a6f362c5f75a5370f6c57da542a32381542f';

/// カラースキーマ
///
/// Copied from [colorScheme].
@ProviderFor(colorScheme)
const colorSchemeProvider = ColorSchemeFamily();

/// カラースキーマ
///
/// Copied from [colorScheme].
class ColorSchemeFamily extends Family<ColorScheme> {
  /// カラースキーマ
  ///
  /// Copied from [colorScheme].
  const ColorSchemeFamily();

  /// カラースキーマ
  ///
  /// Copied from [colorScheme].
  ColorSchemeProvider call({
    required Brightness brightness,
  }) {
    return ColorSchemeProvider(
      brightness: brightness,
    );
  }

  @override
  ColorSchemeProvider getProviderOverride(
    covariant ColorSchemeProvider provider,
  ) {
    return call(
      brightness: provider.brightness,
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
  String? get name => r'colorSchemeProvider';
}

/// カラースキーマ
///
/// Copied from [colorScheme].
class ColorSchemeProvider extends AutoDisposeProvider<ColorScheme> {
  /// カラースキーマ
  ///
  /// Copied from [colorScheme].
  ColorSchemeProvider({
    required Brightness brightness,
  }) : this._internal(
          (ref) => colorScheme(
            ref as ColorSchemeRef,
            brightness: brightness,
          ),
          from: colorSchemeProvider,
          name: r'colorSchemeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$colorSchemeHash,
          dependencies: ColorSchemeFamily._dependencies,
          allTransitiveDependencies:
              ColorSchemeFamily._allTransitiveDependencies,
          brightness: brightness,
        );

  ColorSchemeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.brightness,
  }) : super.internal();

  final Brightness brightness;

  @override
  Override overrideWith(
    ColorScheme Function(ColorSchemeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ColorSchemeProvider._internal(
        (ref) => create(ref as ColorSchemeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        brightness: brightness,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ColorScheme> createElement() {
    return _ColorSchemeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ColorSchemeProvider && other.brightness == brightness;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, brightness.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ColorSchemeRef on AutoDisposeProviderRef<ColorScheme> {
  /// The parameter `brightness` of this provider.
  Brightness get brightness;
}

class _ColorSchemeProviderElement
    extends AutoDisposeProviderElement<ColorScheme> with ColorSchemeRef {
  _ColorSchemeProviderElement(super.provider);

  @override
  Brightness get brightness => (origin as ColorSchemeProvider).brightness;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
