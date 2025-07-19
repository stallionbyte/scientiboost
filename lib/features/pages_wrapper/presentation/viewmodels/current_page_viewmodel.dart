import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scientiboost/core/providers/providers.dart';

part 'current_page_viewmodel.freezed.dart';
part 'current_page_viewmodel.g.dart';

// État immuable de l'authentification
@freezed
sealed class CurrentPageState with _$CurrentPageState {
  const factory CurrentPageState.home() = Home;
  const factory CurrentPageState.exercices() = Exercices;
  const factory CurrentPageState.exams() = Exams;
  const factory CurrentPageState.formules() = Formules;
  const factory CurrentPageState.astuces() = Astuces;
}

@riverpod
class CurrentPageViewModel extends _$CurrentPageViewModel {
  @override
  CurrentPageState build() {
    return const CurrentPageState.home();
  }

  Future<void> goToFormules() async {
    state = const CurrentPageState.formules();

    ref.read(goRouterProvider).push("/pages-wrapper");
  }

  Future<void> goToAstuces() async {
    state = const CurrentPageState.astuces();

    ref.read(goRouterProvider).push("/pages-wrapper");
  }

  Future<void> goToHome() async {
    state = const CurrentPageState.home();

    ref.read(goRouterProvider).push("/pages-wrapper");
  }

  void setHome() {
    state = const CurrentPageState.home();
  }

  void setExercices() {
    state = const CurrentPageState.exercices();
  }

  void setExams() {
    state = const CurrentPageState.exams();
  }

  void setFormules() {
    state = const CurrentPageState.formules();
  }

  void setAstuces() {
    state = const CurrentPageState.astuces();
  }
}
