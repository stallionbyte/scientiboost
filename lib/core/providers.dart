import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';
import '../features/auth/data/repositories/auth_repository.dart';
import '../features/auth/presentation/screens/signin_screen.dart';
import '../features/home/presentation/screens/home_screen.dart';
import '../features/auth/presentation/screens/password_reset_screen.dart';
import 'package:scientiboost/features/auth/presentation/screens/signup_screen.dart';
import '../features/auth/data/services/auth_servive.dart';
import '../placeholder.dart';

part 'providers.g.dart';

// Provider pour le repository d'authentification
@riverpod
AuthRepository authRepository(Ref ref) =>
    AuthRepositoryImpl(AuthService.instance.firebaseAuth);

// Provider pour GoRouter
@riverpod
GoRouter goRouter(Ref ref) => GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/signin', builder: (context, state) => const SignInScreen()),
    GoRoute(path: '/signup', builder: (context, state) => const SignUpScreen()),
    GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
    GoRoute(
      path: '/placeholder',
      builder: (context, state) => const MyPlaceholder(),
    ),
    GoRoute(
      path: '/password-reset',
      builder: (context, state) => const PasswordResetScreen(),
    ),
  ],
);
