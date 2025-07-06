import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    return CurrentPageState.home();
  }

  void setState(CurrentPageState state_) {
    state = state_;
  }

  void setHome() {
    state = CurrentPageState.home();
  }

  void setExercices() {
    state = CurrentPageState.exercices();
  }

  void setExams() {
    state = CurrentPageState.exams();
  }

  void setFormules() {
    state = CurrentPageState.formules();
  }

  void setAstuces() {
    state = CurrentPageState.astuces();
  }

  bool isExercices() {
    if (state case Exercices()) {
      return true;
    } else {
      return false;
    }
  }

  bool isExams() {
    if (state case Exams()) {
      return true;
    } else {
      return false;
    }
  }

  bool isFormules() {
    if (state case Formules()) {
      return true;
    } else {
      return false;
    }
  }

  bool isAstuces() {
    if (state case Astuces()) {
      return true;
    } else {
      return false;
    }
  }

  bool isHome() {
    if (state case Home()) {
      return true;
    } else {
      return false;
    }
  }
}
