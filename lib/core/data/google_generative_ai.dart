import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'google_generative_ai.g.dart';

@riverpod
String generativeAiApiKey(GenerativeAiApiKeyRef ref) {
  throw UnimplementedError();
}

@riverpod
GenerativeModel generativeModel(
  GenerativeModelRef ref, {
  required String model,
}) {
  final apiKey = ref.watch(generativeAiApiKeyProvider);
  return GenerativeModel(model: model, apiKey: apiKey);
}

@riverpod
FutureOr<GenerateContentResponse> generateContent(
  GenerateContentRef ref, {
  required String prompt,
}) async {
  final model = ref.watch(generativeModelProvider(model: 'gemini-pro'));
  final content = [Content.text(prompt)];
  return await model.generateContent(content);
}
