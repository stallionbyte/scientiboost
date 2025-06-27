import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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

import '../features/exos/presentation/screens/exos_screen.dart';
import '../features/exos/presentation/screens/exo_screen.dart';
import '../features/exos/presentation/screens/pc/nuc/chap11/exo1/enonce.dart';
import '../features/exos/presentation/screens/pc/nuc/chap11/exo1/correction.dart';
import '../features/exos/presentation/screens/pc/nuc/chap11/exo2/enonce.dart';
import '../features/exos/presentation/screens/pc/nuc/chap11/exo2/correction.dart';

import '../features/exams/presentation/screens/d/pc/2024/2024.dart';
import '../features/exams/presentation/screens/d/pc/2025/2025.dart';

import '../features/pages_wrapper/presentation/screens/pages_wrapper.dart';
import '../features/pages_wrapper/presentation/screens/menu_screen.dart';

import '../features/video/presentation/screens/video_screen.dart';

import '../features/favorites/presentation/screens/favorites_screen.dart';

import '../data/storage/shared_preference_storage.dart';
import '../data/storage/local_storage_interface.dart';

import 'constants.dart';

import '../test_widget.dart';

import '../placeholder.dart';

part 'providers.g.dart';

// Provider pour une instance de FirebaseAuth
@riverpod
FirebaseAuth firebaseAuthInstance(Ref ref) => FirebaseAuth.instance;

// Provider pour une instance de FirebaseFirestore
@riverpod
FirebaseFirestore firebaseFirestoreInstance(Ref ref) =>
    FirebaseFirestore.instance;

// Provider pour SupabaseClient
@riverpod
SupabaseClient supabaseClient(Ref ref) => Supabase.instance.client;

// Provider pour le repository d'authentification
@riverpod
AuthRepository authRepository(Ref ref) =>
    AuthRepositoryImpl(ref.read(firebaseAuthInstanceProvider));

// Provider pour le repository de suscription
@riverpod
SubscriptionRepository subscriptionRepository(Ref ref) =>
    SubscriptionRepositoryImpl(
      ref.read(firebaseFirestoreInstanceProvider),
      ref.read(firebaseAuthInstanceProvider),
    );

// Provider pour SharedPreferencesStorage

@riverpod
Future<LocalStorageInterface> sharedPreferences(Ref ref) async {
  final storage = SharedPreferencesStorage();
  await storage.init();
  await storage.setStringList(StorageKeysConstants.favoritesExos, <String>[]);
  await storage.setStringList(StorageKeysConstants.favoritesExams, <String>[]);
  return storage;
}

// Provider pour vérifier si la route de l'exercice est dans les favoris
final isFavoriteRouteProvider = FutureProvider.family<bool, String>((
  ref,
  routeParams,
) async {
  List<String> parts = routeParams.split('|');
  String favoriteRouteGroup = parts[0];
  String route = parts[1];
  final storage = await ref.watch(sharedPreferencesProvider.future);
  final favorites = storage.getStringList(favoriteRouteGroup) ?? [];
  return favorites.contains(route);
});

// Provider pour GoRouter
@riverpod
GoRouter goRouter(Ref ref) => GoRouter(
  initialLocation: '/pages-wrapper',
  routes: [
    GoRoute(path: '/test', builder: (context, state) => const TestWidget()),

    GoRoute(
      path: '/placeholder',
      builder: (context, state) => const MyPlaceholder(),
    ),

    GoRoute(path: '/exos', builder: (context, state) => const ExosScreen()),

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
    GoRoute(
      path: '/password-reset',
      builder: (context, state) => const PasswordResetScreen(),
    ),

    GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/menu', builder: (context, state) => MenuScreen()),

    GoRoute(path: '/checkout', builder: (context, state) => CheckoutScreen()),

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

    GoRoute(
      path: '/profil',
      builder: (context, state) {
        return ProfilScreen();
      },
    ),

    GoRoute(
      path: RoutesNamesConstants.pcNucChap11ExosRoutesExo1,
      builder: (context, state) {
        return ExoScreen(
          matiere: 'Physique-Chimie',
          chapNum: 11,
          chapTitle: 'Le noyau atomique',
          exoNum: 1,
          enonce: PcNucChap11Exo1Enonce(),
          correction: PcNucChap11Exo1Correction(),
          route: RoutesNamesConstants.pcNucChap11ExosRoutesExo1,
          favorites: StorageKeysConstants.favoritesExos,
        );
      },
    ),

    GoRoute(
      path: RoutesNamesConstants.pcNucChap11ExosRoutesExo2,
      builder: (context, state) {
        return ExoScreen(
          matiere: 'Physique-Chimie',
          chapNum: 11,
          chapTitle: 'Le noyau atomique',
          exoNum: 2,
          enonce: PcNucChap11Exo2Enonce(),
          correction: PcNucChap11Exo2Correction(),
          route: RoutesNamesConstants.pcNucChap11ExosRoutesExo2,
          favorites: StorageKeysConstants.favoritesExos,
        );
      },
    ),

    GoRoute(
      path: RoutesNamesConstants.pcBacD2025,
      builder: (context, state) {
        return PcBacD2025();
      },
    ),

    GoRoute(
      path: RoutesNamesConstants.pcBacD2024,
      builder: (context, state) {
        return PcBacD2024();
      },
    ),

    GoRoute(
      path: '/favorites',
      builder: (context, state) {
        return FavoritesScreen();
      },
    ),
  ],
);
