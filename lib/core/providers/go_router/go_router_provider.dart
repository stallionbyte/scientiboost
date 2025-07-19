import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'export.dart';
import 'exos/exos_routes.dart';
import 'exams/exams_routes.dart';
part 'go_router_provider.g.dart';

// Provider pour GoRouter
@riverpod
GoRouter goRouter(Ref ref) => GoRouter(
  initialLocation: '/pages-wrapper',
  routes: [
    // Auth
    GoRoute(path: '/signin', builder: (context, state) => const SignInScreen()),
    GoRoute(path: '/signup', builder: (context, state) => const SignUpScreen()),
    GoRoute(
      path: '/signout',
      builder: (context, state) => const SignOutScreen(),
    ),

    GoRoute(
      path: '/password-reset',
      builder: (context, state) => const PasswordResetScreen(),
    ),

    // subscription
    GoRoute(
      path: '/subscription',
      builder: (context, state) => SubscriptionSreen(),
    ),
    GoRoute(
      path: '/subscription-perks',
      builder: (context, state) => SubscriptionPerksScreen(),
    ),
    GoRoute(
      path: '/subscription-infos',
      builder: (context, state) {
        return SubscriptionInfosScreen();
      },
    ),
    GoRoute(path: '/checkout', builder: (context, state) => CheckoutScreen()),

    // Autres
    GoRoute(path: '/test', builder: (context, state) => const TestWidget()),

    GoRoute(
      path: '/placeholder',
      builder: (context, state) => const Placeholder(),
    ),

    GoRoute(
      path: '/pages-wrapper',
      builder: (context, state) => PagesWrapper(),
    ),

    GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/menu', builder: (context, state) => MenuScreen()),

    GoRoute(
      path: '/video',
      builder:
          (context, state) => VideoPlayerScreen(
            matiere: state.uri.queryParameters['matiere'] as String,
            nameOnDataBase:
                state.uri.queryParameters['nameOnDataBase'] as String,
            title: state.uri.queryParameters['title'] as String,
          ),
    ),

    GoRoute(
      path: '/profil',
      builder: (context, state) {
        return ProfilScreen();
      },
    ),

    GoRoute(
      path: '/favorites',
      builder: (context, state) {
        return FavoritesScreen();
      },
    ),

    ...exoRoutes,

    ...examsRoutes,
  ],
);
