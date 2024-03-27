// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ExampleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExampleScreen(),
      );
    }
  };
}

/// generated route for
/// [ExampleScreen]
class ExampleRoute extends PageRouteInfo<void> {
  const ExampleRoute({List<PageRouteInfo>? children})
      : super(
          ExampleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExampleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
