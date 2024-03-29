import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ExampleScreen extends StatelessWidget {
  static const path = "/example";

  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
