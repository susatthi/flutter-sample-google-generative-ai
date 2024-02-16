import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'core/data/google_generative_ai.dart';
import 'util/logger.dart';
import 'util/provider_logger.dart';

const _logPrefix = '[MAIN]';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // isRelease
  logger.i('$_logPrefix isRelease = $kReleaseMode');

  // generative ai api key
  await dotenv.load();
  final generativeAiApiKey = dotenv.env['GENERATIVE_AI_API_KEY']!;

  logger.i('$_logPrefix runApp() START');

  runApp(
    ProviderScope(
      overrides: [
        generativeAiApiKeyProvider.overrideWithValue(generativeAiApiKey),
      ],
      observers: [
        ProviderLogger(),
      ],
      child: const App(),
    ),
  );
}
