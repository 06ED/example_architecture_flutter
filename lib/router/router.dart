import 'package:auto_route/auto_route.dart';
import '/features/example_feature/screens/screens.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ExampleRoute.page, path: ExampleScreen.path),
        AutoRoute(page: HomeRoute.page, path: HomeScreen.path),
      ];
}
