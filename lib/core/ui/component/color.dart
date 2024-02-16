import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'material.dart';

part 'color.g.dart';

/// シードカラー
@riverpod
Color seedColor(SeedColorRef ref) {
  return Colors.green;
}

/// マテリアルカラー
@riverpod
CorePalette colorPalette(ColorPaletteRef ref) {
  final seedColor = ref.watch(seedColorProvider);
  return CorePalette.of(seedColor.value);
}

/// マテリアルサーフェス
@riverpod
MaterialSurfaceColor materialSurfaceColor(
  MaterialSurfaceColorRef ref, {
  required Brightness brightness,
}) {
  return MaterialSurfaceColor.fromSeed(
    brightness: brightness,
    seedColor: ref.watch(seedColorProvider),
  );
}

/// カラースキーマ
@riverpod
ColorScheme colorScheme(
  ColorSchemeRef ref, {
  required Brightness brightness,
}) {
  return ColorScheme.fromSeed(
    brightness: brightness,
    seedColor: ref.watch(seedColorProvider),
  );
}
