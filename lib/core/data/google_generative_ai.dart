import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'google_generative_ai.g.dart';

@riverpod
String generativeAiApiKey(GenerativeAiApiKeyRef ref) {
  throw UnimplementedError();
}

@riverpod
GenerativeModel genemiProModel(GenemiProModelRef ref) {
  final apiKey = ref.watch(generativeAiApiKeyProvider);
  return GenerativeModel(
    model: 'gemini-pro',
    apiKey: apiKey,
    generationConfig: GenerationConfig(maxOutputTokens: 100),
  );
}
