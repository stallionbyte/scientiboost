import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';

import 'package:scientiboost/core/providers.dart';

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
    final regex = RegExp(r'bac\((.*?)\)');
    return regex.firstMatch(route)?.group(1);
  }

  String? getAnneeFromExamRoute(String route) {
    final regex = RegExp(r'annee\((.*?)\)');
    return regex.firstMatch(route)?.group(1);
  }

  Future<void> goToExam({required route}) async {
    final router = ref.read(goRouterProvider);

    state = ExamState.examInitial();

    if (ref.read(authViewModelProvider.notifier).isAuthenticated()) {
      state = ExamState.examLoading(route);
      //await Future.delayed(Duration(seconds: 2));
      await ref
          .read(subscriptionViewModelProvider.notifier)
          .checkSubscription();

      state = ExamState.examInitial();
      router.push(route);
    } else {
      router.push('/signin');
    }
  }

  void setState(ExamState state_) {
    state = state_;
  }
}
