import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:go_router/go_router.dart';

import 'package:scientiboost/features/auth/data/repositories/auth_repository.dart';
import 'package:scientiboost/features/subscription/data/repositories/subscription_repository.dart';

import 'package:scientiboost/features/home/presentation/screens/home_screen.dart';

import 'package:scientiboost/features/auth/presentation/screens/signin_screen.dart';
import 'package:scientiboost/features/auth/presentation/screens/password_reset_screen.dart';
import 'package:scientiboost/features/auth/presentation/screens/signup_screen.dart';
import 'package:scientiboost/features/auth/presentation/screens/signout_screen.dart';
import 'package:scientiboost/features/auth/presentation/screens/email_verification_screen.dart';

import 'package:scientiboost/features/subscription/presentation/screens/subscription_screen.dart';
import 'package:scientiboost/features/subscription/presentation/screens/subscription_infos_screen.dart';
import 'package:scientiboost/features/subscription/presentation/screens/subscription_perks_screen.dart';
import 'package:scientiboost/features/subscription/presentation/screens/checkout_screen.dart';

import 'package:scientiboost/features/profil/presentation/screens/profil_screen.dart';

import 'package:scientiboost/features/exos/presentation/screens/exo_screen.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/exo1/enonce.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/exo1/correction.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/exo2/enonce.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/exo2/correction.dart';

import 'package:scientiboost/features/exams/presentation/screens/exam_screen.dart';
import 'package:scientiboost/features/exams/presentation/screens/d/pc/2024/chim/exo1/enonce.dart';
import 'package:scientiboost/features/exams/presentation/screens/d/pc/2024/chim/exo1/correction.dart';
import 'package:scientiboost/features/exams/presentation/screens/d/pc/2024/chim/exo2/enonce.dart';
import 'package:scientiboost/features/exams/presentation/screens/d/pc/2024/chim/exo2/correction.dart';
import 'package:scientiboost/features/exams/presentation/screens/d/pc/2024/phy/exo1/enonce.dart';
import 'package:scientiboost/features/exams/presentation/screens/d/pc/2024/phy/exo1/correction.dart';
import 'package:scientiboost/features/exams/presentation/screens/d/pc/2024/phy/exo2/enonce.dart';
import 'package:scientiboost/features/exams/presentation/screens/d/pc/2024/phy/exo2/correction.dart';
import 'package:scientiboost/features/exams/presentation/screens/d/pc/2024/phy/exo3/enonce.dart';
import 'package:scientiboost/features/exams/presentation/screens/d/pc/2024/phy/exo3/correction.dart';

import 'package:scientiboost/features/pages_wrapper/presentation/screens/pages_wrapper.dart';
import 'package:scientiboost/features/pages_wrapper/presentation/screens/menu_screen.dart';

import 'package:scientiboost/features/video/presentation/screens/video_screen.dart';
import 'package:scientiboost/features/video/data/repositories/video_repository.dart';
import 'package:scientiboost/features/video/presentation/viewmodels/video_viewmodel.dart';

import 'package:scientiboost/features/internet/data/repositories/internet_repository.dart';

import 'package:scientiboost/features/favorites/presentation/screens/favorites_screen.dart';

import 'package:scientiboost/data/storage/shared_preference_storage.dart';
import 'package:scientiboost/data/storage/local_storage_interface.dart';

import 'package:scientiboost/core/constants.dart';

import 'package:scientiboost/test_widget.dart';

part 'providers.g.dart';

// Just SignIn provider
final justSignInProvider = StateProvider<bool>((ref) => false);

// Just SignUp provider
final justSignUpProvider = StateProvider<bool>((ref) => false);

// Just SignOut provider
final justSignOutProvider = StateProvider<bool>((ref) => false);

// Fournisseur pour InternetRepository
@riverpod
InternetRepository internetRepository(Ref ref) {
  return InternetRepositoryImpl();
}

// Provider pour une instance de FirebaseAuth
@riverpod
FirebaseAuth firebaseAuthInstance(Ref ref) => FirebaseAuth.instance;

// Provider pour une instance de FirebaseFirestore
@riverpod
FirebaseFirestore firebaseFirestoreInstance(Ref ref) =>
    FirebaseFirestore.instance;

// 1. Fournisseur pour SupabaseClient (celui que vous avez déjà)
@riverpod
SupabaseClient supabaseClient(Ref ref) => Supabase.instance.client;

// 2. Fournisseur pour VideoRepository
// Ce provider dépend du supabaseClientProvider
@riverpod
VideoRepository videoRepository(Ref ref) {
  // On récupère le client Supabase depuis son provider
  return VideoRepositoryImpl(ref.read(supabaseClientProvider));
}

// 3. Fournisseur pour VideoViewmodel
// Ce provider dépend du videoRepositoryProvider
@riverpod
VideoViewmodel videoViewmodel(Ref ref) {
  // On récupère le repository depuis son provider
  return VideoViewmodel(ref.read(videoRepositoryProvider));
}

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
      builder: (context, state) => const Placeholder(),
    ),

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
      path: RoutesNamesConstants.pcBacD2024,
      builder: (context, state) {
        return ExamScreen(
          pays: 'Burkina Faso',
          matiere: 'Physique-Chimie',
          examInfos: 'BAC D 2024',
          favorites: StorageKeysConstants.favoritesExams,
          route: RoutesNamesConstants.pcBacD2024,

          enonceChimExo1: PcBacD2024ChimExo1Enonce(),
          correctionChimExo1: PcBacD2024ChimExo1Correction(),
          enonceChimExo2: PcBacD2024ChimExo2Enonce(),
          correctionChimExo2: PcBacD2024ChimExo2Correction(),

          enoncePhyExo1: PcBacD2024PhyExo1Enonce(),
          correctionPhyExo1: PcBacD2024PhyExo1Correction(),
          enoncePhyExo2: PcBacD2024PhyExo2Enonce(),
          correctionPhyExo2: PcBacD2024PhyExo2Correction(),
          enoncePhyExo3: PcBacD2024PhyExo3Enonce(),
          correctionPhyExo3: PcBacD2024PhyExo3Correction(),
        );
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
