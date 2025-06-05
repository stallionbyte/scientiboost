import 'package:firebase_auth/firebase_auth.dart';

/// Singleton pour gérer une instance de FirebaseAuth
class AuthService {
  // Instance privée
  static final AuthService _instance = AuthService._internal();

  // Instance FirebaseAuth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // Constructeur privé
  AuthService._internal();

  // Getter pour accéder à l'instance singleton
  static AuthService get instance => _instance;

  // Getter pour accéder à FirebaseAuth directement
  FirebaseAuth get firebaseAuth => _firebaseAuth;
}

// Utilisation :
// final authService = AuthService.instance;
