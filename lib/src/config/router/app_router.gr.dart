// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    QrScanViewRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const QrScanView(),
      );
    },
    BottomNavigationRoute.name: (routeData) {
      final args = routeData.argsAs<BottomNavigationRouteArgs>(
          orElse: () => const BottomNavigationRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: BottomNavigation(
          key: args.key,
          isLogin: args.isLogin,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashScreenRoute.name,
          path: '/splash-screen',
        ),

        RouteConfig(
          QrScanViewRoute.name,
          path: '/qr-scan-view',
        ),
        RouteConfig(
          BottomNavigationRoute.name,
          path: '/bottom-navigation',
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/splash-screen',
        );

  static const String name = 'SplashScreenRoute';
}


/// generated route for
/// [QrScanView]
class QrScanViewRoute extends PageRouteInfo<void> {
  const QrScanViewRoute()
      : super(
          QrScanViewRoute.name,
          path: '/qr-scan-view',
        );

  static const String name = 'QrScanViewRoute';
}

/// generated route for
/// [BottomNavigation]
class BottomNavigationRoute extends PageRouteInfo<BottomNavigationRouteArgs> {
  BottomNavigationRoute({
    Key? key,
    bool? isLogin,
  }) : super(
          BottomNavigationRoute.name,
          path: '/bottom-navigation',
          args: BottomNavigationRouteArgs(
            key: key,
            isLogin: isLogin,
          ),
        );

  static const String name = 'BottomNavigationRoute';
}

class BottomNavigationRouteArgs {
  const BottomNavigationRouteArgs({
    this.key,
    this.isLogin,
  });

  final Key? key;

  final bool? isLogin;

  @override
  String toString() {
    return 'BottomNavigationRouteArgs{key: $key, isLogin: $isLogin}';
  }
}
