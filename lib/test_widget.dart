import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  String _displayText = 'Aucun map récupéré pour le moment';

  // Fonction pour stocker un Map<String, dynamic> dans SharedPreferences
  Future<void> saveMapToPrefs(String key, Map<String, dynamic> map) async {
    final prefs = await SharedPreferences.getInstance();
    String jsonString = jsonEncode(map);
    await prefs.setString(key, jsonString);
  }

  // Fonction pour récupérer un Map<String, dynamic> depuis SharedPreferences
  Future<Map<String, dynamic>?> getMapFromPrefs(String key) async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString(key);
    if (jsonString != null) {
      return jsonDecode(jsonString) as Map<String, dynamic>;
    }
    return null;
  }

  // Action déclenchée par le bouton "Stocker Map"
  Future<void> _storeMap() async {
    Map<String, dynamic> myMap = {
      'name': 'Alice',
      'age': 25,
      'isStudent': false,
      'scores': [90.0, 85.5],
    };

    await saveMapToPrefs('testMap', myMap);
    setState(() {
      _displayText = 'Map stocké avec succès : $myMap';
    });
  }

  // Action déclenchée par le bouton "Récupérer Map"
  Future<void> _retrieveMap() async {
    Map<String, dynamic>? retrievedMap = await getMapFromPrefs('testMap');
    setState(() {
      if (retrievedMap != null) {
        _displayText = 'Map récupéré : $retrievedMap';
      } else {
        _displayText = 'Aucun map trouvé dans SharedPreferences';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test SharedPreferences')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _storeMap,
              child: const Text('Stocker Map'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _retrieveMap,
              child: const Text('Récupérer Map'),
            ),
            const SizedBox(height: 16),
            Text(
              _displayText,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
