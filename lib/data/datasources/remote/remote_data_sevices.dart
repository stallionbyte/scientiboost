import 'package:supabase_flutter/supabase_flutter.dart';

/// Singleton pour gérer les instances de sources de données distantes
class RemoteDataServices {
  // Instance privée
  static final RemoteDataServices _instance = RemoteDataServices._internal();

  // clieant Supabase
  final SupabaseClient _supabase = Supabase.instance.client;

  // Constructeur privé
  RemoteDataServices._internal();

  // Getter pour accéder à l'instance singleton
  static RemoteDataServices get instance => _instance;

  // Getter pour accéder à Supabase
  SupabaseClient get supabase => _supabase;
}

// Utilisation :
// final RemoteDataServices = RemoteDataServices.instance;
