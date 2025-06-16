import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:go_router/go_router.dart';

import '../features/auth/data/repositories/auth_repository.dart';
import '../features/subscription/data/repositories/subscription_repository.dart';

import '../features/home/presentation/screens/home_screen.dart';

import '../features/auth/presentation/screens/signin_screen.dart';
import '../features/auth/presentation/screens/password_reset_screen.dart';
import 'package:scientiboost/features/auth/presentation/screens/signup_screen.dart';
import 'package:scientiboost/features/auth/presentation/screens/signout_screen.dart';
import 'package:scientiboost/features/auth/presentation/screens/email_verification_screen.dart';

import '../features/subscription/presentation/screens/subscription_screen.dart';
import '../features/subscription/presentation/screens/subscription_infos_screen.dart';
import '../features/subscription/presentation/screens/subscription_perks_screen.dart';
import '../features/subscription/presentation/screens/checkout_screen.dart';

import '../features/profil/presentation/screens/profil_screen.dart';

import '../features/pages_wrapper/presentation/screens/pages_wrapper.dart';
import '../features/pages_wrapper/presentation/screens/menu_screen.dart';

import '../placeholder.dart';

import '../data/datasources/remote/remote_data_sevices.dart';
import '../core/services/auth_service.dart';

part 'providers.g.dart';

// Provider pour le repository d'authentification
@riverpod
AuthRepository authRepository(Ref ref) =>
    AuthRepositoryImpl(AuthService.instance.firebaseAuth);

// Provider pour le repository de suscription
@riverpod
SubscriptionRepository subscriptionRepository(Ref ref) =>
    SubscriptionRepositoryImpl(RemoteDataServices.instance.firebaseFirestore);

// Provider pour GoRouter
@riverpod
GoRouter goRouter(Ref ref) => GoRouter(
  initialLocation: '/pages-wrapper',
  routes: [
    GoRoute(
      path: '/pages-wrapper',
      builder: (context, state) => PagesWrapper(),
    ),
    GoRoute(path: '/signin', builder: (context, state) => const SignInScreen()),
    GoRoute(path: '/signup', builder: (context, state) => const SignUpScreen()),
    GoRoute(
      path: '/signout',
      builder: (context, state) => const SignOutScreen(),
    ),
    GoRoute(
      path: '/email-verification',
      builder: (context, state) => const EmailVerificationScreen(),
    ),
    GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/menu', builder: (context, state) => MenuScreen()),
    GoRoute(path: '/checkout', builder: (context, state) => CheckoutScreen()),

    GoRoute(
      path: '/subscription',
      builder: (context, state) => SubscriptionSreen(),
    ),
    GoRoute(
      path: '/subscription-perks',
      builder: (context, state) => SubscriptionPerksScreen(),
    ),
    GoRoute(
      path: '/placeholder',
      builder: (context, state) => const MyPlaceholder(),
    ),
    GoRoute(
      path: '/password-reset',
      builder: (context, state) => const PasswordResetScreen(),
    ),
    GoRoute(
      path: '/subscription-infos',
      builder: (context, state) {
        return SubscriptionInfosScreen();
      },
    ),
    GoRoute(
      path: '/profil',
      builder: (context, state) {
        return ProfilScreen();
      },
    ),
  ],
);
