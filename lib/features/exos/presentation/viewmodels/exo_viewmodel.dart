import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

import 'package:scientiboost/core/providers.dart';

part 'exo_viewmodel.freezed.dart';
part 'exo_viewmodel.g.dart';

// État immuable de l'exo
@freezed
sealed class ExoState with _$ExoState {
  const factory ExoState.exoInitial() = ExoInitial;
  const factory ExoState.exoLoading(String route) = ExoLoading;
  const factory ExoState.exoError(String error) = ExoError;
}

// ViewModel pour la logique d'Exo
@riverpod
class ExoViewmodel extends _$ExoViewmodel {
  @override
  ExoState build() {
    return const ExoState.exoInitial();
  }

  String? getMatiereFromExoRoute(String route) {
    final regex = RegExp(r'matiere\((.*?)\)');
    return regex.firstMatch(route)?.group(1);
  }

  String? getChapFromExoRoute(String route) {
    final regex = RegExp(r'chap\((.*?)\)');
    return regex.firstMatch(route)?.group(1);
  }

  String? getExoNumFromExoRoute(String route) {
    final regex = RegExp(r'exo\((.*?)\)');
    return regex.firstMatch(route)?.group(1);
  }

  Future<void> goToExercice({required route}) async {
    final router = ref.read(goRouterProvider);

    if (ref.read(authViewModelProvider.notifier).isAuthenticated()) {
      router.push(route);
    } else {
      router.push('/signin');
    }
  }

  void setState(ExoState state_) {
    state = state_;
  }
}
