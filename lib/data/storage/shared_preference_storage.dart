import 'package:shared_preferences/shared_preferences.dart';
import 'local_storage_interface.dart';

class SharedPreferencesStorage implements LocalStorageInterface {
  SharedPreferencesWithCache? _prefs;

  @override
  Future<void> init() async {
    _prefs = await SharedPreferencesWithCache.create(
      cacheOptions: SharedPreferencesWithCacheOptions(),
    );
  }

  SharedPreferencesWithCache? get prefs {
    return _prefs;
  }

  @override
  Future<void> setString(String key, String value) async {
    await prefs?.setString(key, value);
  }

  @override
  String? getString(String key) {
    return prefs?.getString(key);
  }

  @override
  Future<void> setInt(String key, int value) async {
    await prefs?.setInt(key, value);
  }

  @override
  int? getInt(String key) {
    return prefs?.getInt(key);
  }

  @override
  Future<void> setBool(String key, bool value) async {
    await prefs?.setBool(key, value);
  }

  @override
  bool? getBool(String key) {
    return prefs?.getBool(key);
  }

  @override
  Future<void> setDouble(String key, double value) async {
    await prefs?.setDouble(key, value);
  }

  @override
  double? getDouble(String key) {
    return prefs?.getDouble(key);
  }

  @override
  Future<void> setStringList(String key, List<String> value) async {
    await prefs?.setStringList(key, value);
  }

  @override
  List<String>? getStringList(String key) {
    return prefs?.getStringList(key);
  }

  @override
  Future<void> remove(String key) async {
    await prefs?.remove(key);
  }

  @override
  Future<void> clear() async {
    await prefs?.clear();
  }

  @override
  bool? containsKey(String key) {
    return prefs?.containsKey(key);
  }

  /*
  @override
  Set<String> getKeys() {
    return prefs?.getKeys();
  }
  */
}
