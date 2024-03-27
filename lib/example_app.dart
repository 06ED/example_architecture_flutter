import 'package:env_flutter/env_flutter.dart';
import 'package:example_arcitecture_flutter/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: dotenv.get("APP_TITLE"),
      routerConfig: GetIt.I.get<AppRouter>().config(),
    );
  }
}