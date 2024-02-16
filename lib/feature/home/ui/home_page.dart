import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:markdown_widget/widget/all.dart';

import '../../../core/data/google_generative_ai.dart';
import '../../../core/ui/component/riverpod.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Generative AI'),
      ),
      body: const SafeArea(
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  String _prompt = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: _GeneratedText(
              prompt: _prompt,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: _PromptTextField(
            onSend: (prompt) {
              setState(() {
                _prompt = prompt;
              });
            },
          ),
        ),
      ],
    );
  }
}

class _PromptTextField extends StatefulWidget {
  const _PromptTextField({
    required this.onSend,
  });

  final void Function(String prompt) onSend;

  @override
  State<_PromptTextField> createState() => _PromptTextFieldState();
}

class _PromptTextFieldState extends State<_PromptTextField> {
  final _controller = TextEditingController(text: 'Flutterを簡単に教えて。');

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        hintText: 'GenemiProにメッセージを送る...',
        suffixIcon: IconButton(
          onPressed: () => widget.onSend(_controller.text),
          icon: const Icon(Icons.send),
        ),
      ),
    );
  }
}

class _GeneratedText extends ConsumerWidget {
  const _GeneratedText({
    required this.prompt,
  });

  final String prompt;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (prompt.isEmpty) {
      return const Text('今日は何をお手伝いしましょうか？');
    }

    final provider = generateContentProvider(prompt: prompt);
    ref.listenAsync(provider);
    final asyncValue = ref.watch(provider);
    return asyncValue.whenWidget(
      data: (response) {
        return MarkdownBlock(data: response.text ?? 'error');
      },
    );
  }
}
