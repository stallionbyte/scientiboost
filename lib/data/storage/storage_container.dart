import 'package:scientiboost/data/storage/local_storage_interface.dart';
import 'package:scientiboost/data/storage/shared_preference_storage.dart';
import 'package:scientiboost/core/constants.dart';

// 4. Container global pour le storage (storage_container.dart)
class StorageContainer {
  static final StorageContainer _instance = StorageContainer._internal();
  static StorageContainer get instance => _instance;
  StorageContainer._internal();

  late final LocalStorageInterface storage;

  Future<void> initialize() async {
    storage = await SharedPreferencesStorage.create();

    // Initialisation des valeurs par défaut
    await storage.setStringList(StorageKeysConstants.favoritesExos, <String>[]);
    await storage.setStringList(
      StorageKeysConstants.favoritesExams,
      <String>[],
    );
  }
}
