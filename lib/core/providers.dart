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
import '../features/exos/presentation/screens/pc/nuc/chap11/pc_nuc_chap11_exo1_screen.dart';

import '../features/pages_wrapper/presentation/screens/pages_wrapper.dart';
import '../features/pages_wrapper/presentation/screens/menu_screen.dart';

import '../features/video/presentation/screens/video_screen.dart';

import '../features/exercice/presentation/screens/exercice_screen.dart';

import '../data/storage/shared_preference_storage.dart';
import '../data/storage/local_storage_interface.dart';

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
  return storage;
}

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
      path: '/exercice',
      builder: (context, state) {
        return ExerciceScreen();
      },
    ),

    GoRoute(
      path: '/pc/nuc/chap11/exo1',
      builder: (context, state) {
        return PcNucChap11Exo1Screen();
      },
    ),
  ],
);
