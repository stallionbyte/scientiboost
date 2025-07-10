import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_viewmodel.freezed.dart';
part 'exam_viewmodel.g.dart';

// État immuable de l'Exam
@freezed
sealed class ExamState with _$ExamState {
  const factory ExamState.examInitial() = ExamInitial;
  const factory ExamState.examLoading(String route) = ExamLoading;
  const factory ExamState.examError(String error) = ExamError;
}

// ViewModel pour la logique d'Exam
@riverpod
class ExamViewmodel extends _$ExamViewmodel {
  @override
  ExamState build() {
    return const ExamState.examInitial();
  }

  String? getMatiereFromExamRoute(String route) {
    final regex = RegExp(r'matiere\((.*?)\)');
    return regex.firstMatch(route)?.group(1);
  }

  String? getBacFromExamRoute(String route) {
    final regex = RegExp(r'examen\((.*?)\)');
    return regex.firstMatch(route)?.group(1);
  }

  String? getAnneeFromExamRoute(String route) {
    final regex = RegExp(r'annee\((.*?)\)');
    return regex.firstMatch(route)?.group(1);
  }

  String? getPaysFromExamRoute(String route) {
    final regex = RegExp(r'pays\((.*?)\)');
    return regex.firstMatch(route)?.group(1);
  }
}
