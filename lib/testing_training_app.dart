import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:testing_training/router/router.dart';
import 'package:testing_training/theme/theme.dart';

class TestingTrainingApp extends StatefulWidget {
  const TestingTrainingApp({super.key});

  @override
  State<StatefulWidget> createState() => _TestingTrainingAppState();
}

class _TestingTrainingAppState extends State<TestingTrainingApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
        builder: (ColorScheme? lightColorScheme, ColorScheme? darkColorScheme) {
          return MaterialApp.router(
            title: "Подготовка к ЦТ",
            theme: getTheme(colorTheme: lightColorScheme),
            darkTheme: getTheme(colorTheme: darkColorScheme, darkMode: true),
            themeMode: ThemeMode.system,
            routerConfig: _router.config(),
          );
        });
  }
}