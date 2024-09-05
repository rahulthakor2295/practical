import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../presentation/views/home/bottom_navigation.dart';
import '../../presentation/views/qr/qr_scan_view.dart';
import '../../presentation/views/splash/splash_screen.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: SplashScreen, ),
    AutoRoute(page: QrScanView),
    AutoRoute(page: BottomNavigation),
  ],
)
class AppRouter extends _$AppRouter {}

final appRouter = AppRouter();
