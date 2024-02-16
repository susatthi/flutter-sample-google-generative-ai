import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router/router.dart';
import 'theme/theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final lightThemeData =
        ref.watch(themeDataProvider(brightness: Brightness.light));
    return MaterialApp.router(
      title: 'GoogleGenerativeAI',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [Locale('ja')],
      routerConfig: appRouter,
    );
  }
}
