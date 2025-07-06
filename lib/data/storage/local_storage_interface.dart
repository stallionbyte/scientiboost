// 1. Interface mise à jour (local_storage_interface.dart)
abstract class LocalStorageInterface {
  // Removed Future<void> init() - initialization will be handled externally

  // String operations
  Future<void> setString(String key, String value);
  String? getString(String key);

  // Int operations
  Future<void> setInt(String key, int value);
  int? getInt(String key);

  // Bool operations
  Future<void> setBool(String key, bool value);
  bool? getBool(String key);

  // Double operations
  Future<void> setDouble(String key, double value);
  double? getDouble(String key);

  // List operations
  Future<void> setStringList(String key, List<String> value);
  List<String>? getStringList(String key);

  // Remove operations
  Future<void> remove(String key);
  Future<void> clear();

  // Check existence
  bool? containsKey(String key);
}
