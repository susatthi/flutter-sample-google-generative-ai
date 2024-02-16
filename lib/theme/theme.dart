import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/ui/component/color.dart';

part 'theme.g.dart';

/// テーマデータ
@riverpod
ThemeData themeData(
  ThemeDataRef ref, {
  required Brightness brightness,
}) {
  final colorScheme = ref.watch(colorSchemeProvider(brightness: brightness));
  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
  );
}
