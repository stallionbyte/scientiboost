import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:scientiboost/features/auth/data/repositories/auth_repository.dart';
import 'package:scientiboost/features/subscription/data/repositories/subscription_repository.dart';

import 'package:scientiboost/features/video/data/repositories/video_repository.dart';
import 'package:scientiboost/features/video/presentation/viewmodels/video_viewmodel.dart';

import 'package:scientiboost/features/internet/data/repositories/internet_repository.dart';

import 'package:scientiboost/data/storage/local_storage_interface.dart';
import 'package:scientiboost/data/storage/storage_container.dart';

part 'other_providers.g.dart';

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

// Provider synchrone qui retourne l'instance déjà initialisée
@riverpod
LocalStorageInterface localStorage(Ref ref) {
  // Récupère l'instance depuis le container global
  return StorageContainer.instance.storage;
}

// Provider pour vérifier si la route de l'exercice est dans les favoris
final isFavoriteRouteProvider = Provider.family<bool, String>((
  ref,
  routeParams,
) {
  List<String> parts = routeParams.split('|');
  String favoriteRouteGroup = parts[0];
  String route = parts[1];
  final storage = ref.watch(localStorageProvider);
  final favorites = storage.getStringList(favoriteRouteGroup) ?? [];
  return favorites.contains(route);
});
