import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

/// The route configuration.
final appRouter = GoRouter(
  // initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, GoRouterState state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, GoRouterState state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, GoRouterState state) => const CardsScreen(),
    ),
  ],
);
