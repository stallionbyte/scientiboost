import 'package:cloud_firestore/cloud_firestore.dart';

/// Singleton pour gérer les instances de sources de données distantes
class RemoteDataServices {
  // Instance privée
  static final RemoteDataServices _instance = RemoteDataServices._internal();

  // Instance FirebaseFirestore
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  // Constructeur privé
  RemoteDataServices._internal();

  // Getter pour accéder à l'instance singleton
  static RemoteDataServices get instance => _instance;

  // Getter pour accéder à FirebaseFirestore directement
  FirebaseFirestore get firebaseFirestore => _firebaseFirestore;
}

// Utilisation :
// final RemoteDataServices = RemoteDataServices.instance;
