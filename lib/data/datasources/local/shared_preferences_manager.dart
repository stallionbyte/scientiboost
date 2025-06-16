import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static SharedPreferencesManager? _instance;
  static SharedPreferencesWithCache? _prefsWithCache;

  // Constructeur privé
  SharedPreferencesManager._();

  // Getter pour l'instance singleton
  static SharedPreferencesManager get instance {
    _instance ??= SharedPreferencesManager._();
    return _instance!;
  }

  // Initialisation de SharedPreferencesWithCache
  Future<void> init() async {
    _prefsWithCache ??= await SharedPreferencesWithCache.create(
      cacheOptions: SharedPreferencesWithCacheOptions(),
    );
  }

  // Getter pour accéder aux préférences
  /*
  SharedPreferencesWithCache? get prefs {
    return _prefsWithCache!;
  }
  */

  Future<SharedPreferencesWithCache> get prefs async {
    if (_prefsWithCache == null) {
      await init();
    }
    return _prefsWithCache!;
  }

  // Méthodes de commodité pour les opérations courantes
  Future<void> setBool(String key, bool value) async {
    final preferences = await prefs;
    await preferences.setBool(key, value);
  }

  Future<void> setString(String key, String value) async {
    final preferences = await prefs;
    await preferences.setString(key, value);
  }

  Future<void> setInt(String key, int value) async {
    final preferences = await prefs;
    await preferences.setInt(key, value);
  }

  Future<void> setDouble(String key, double value) async {
    final preferences = await prefs;
    await preferences.setDouble(key, value);
  }

  Future<void> setStringList(String key, List<String> value) async {
    final preferences = await prefs;
    await preferences.setStringList(key, value);
  }

  Future<bool?> getBool(String key) async {
    final preferences = await prefs;
    return preferences.getBool(key);
  }

  Future<String?> getString(String key) async {
    final preferences = await prefs;
    return preferences.getString(key);
  }

  Future<int?> getInt(String key) async {
    final preferences = await prefs;
    return preferences.getInt(key);
  }

  Future<double?> getDouble(String key) async {
    final preferences = await prefs;
    return preferences.getDouble(key);
  }

  Future<List<String>?> getStringList(String key) async {
    final preferences = await prefs;
    return preferences.getStringList(key);
  }

  Future<void> remove(String key) async {
    final preferences = await prefs;
    await preferences.remove(key);
  }

  Future<void> clear() async {
    final preferences = await prefs;
    await preferences.clear();
  }

  Future<bool> containsKey(String key) async {
    final preferences = await prefs;
    return preferences.containsKey(key);
  }

  // Méthode pour réinitialiser le singleton (utile pour les tests)
  static void reset() {
    _instance = null;
    _prefsWithCache = null;
  }
}
