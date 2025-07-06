import 'package:scientiboost/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:scientiboost/firebase_options.dart';
import 'package:media_kit/media_kit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:scientiboost/data/storage/storage_container.dart';

import 'package:scientiboost/supabase_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  MediaKit.ensureInitialized();
  await TeXRenderingServer.start();
  await StorageContainer.instance.initialize();
  await Supabase.initialize(
    url: SupabaseConfig.supabaseUrl,
    anonKey: SupabaseConfig.supabaseAnonKey,
  );
  await initializeDateFormatting('fr_FR', null);
  runApp(const ProviderScope(child: MyApp()));
}
