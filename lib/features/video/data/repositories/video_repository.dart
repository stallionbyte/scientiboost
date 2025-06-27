import 'package:result_dart/result_dart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class VideoRepository {
  ResultDart<String, Unit> getPublicUrl(String matiere, String nameOnDataBase);
}

class VideoRepositoryImpl implements VideoRepository {
  final SupabaseClient _supabase;

  VideoRepositoryImpl(this._supabase);

  @override
  ResultDart<String, Unit> getPublicUrl(String matiere, String nameOnDataBase) {
    try {
      final String publicUrl = _supabase.storage
          .from(matiere)
          .getPublicUrl(nameOnDataBase);

      return Success(publicUrl);
    } catch (e) {
      return Failure(unit);
    }
  }
}
