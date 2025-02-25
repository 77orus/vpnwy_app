import 'package:go_router/go_router.dart';
import 'package:vpnwy_app/core/routes/routes.dart';
import 'package:vpnwy_app/features/home/ui/screens/home_connected_screen.dart';
import 'package:vpnwy_app/features/on_boarding/ui/screens/on_boarding_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const OnBoardingScreen()),
    GoRoute(
      path: AppRoutes.homeConnectedScreen,
      builder: (context, state) => const HomeConnectedScreen(),
    ),
  ],
);
