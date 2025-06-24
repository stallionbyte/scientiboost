import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../auth/presentation/viewmodels/auth_viewmodel.dart';
import '../../../subscription/presentation/viewmodels/subscription_viewmodel.dart';

import '../../../../core/providers.dart';

part 'exo_viewmodel.freezed.dart';
part 'exo_viewmodel.g.dart';

// État immuable de l'exo
@freezed
sealed class ExoState with _$ExoState {
  const factory ExoState.exoInitial() = ExoInitial;
  const factory ExoState.exoLoading() = ExoLoading;
  const factory ExoState.exoError(String error) = ExoError;
}

// ViewModel pour la logique d'Exo
@riverpod
class ExoViewmodel extends _$ExoViewmodel {
  @override
  ExoState build() {
    return const ExoState.exoInitial();
  }

  Future<void> goToExercice({required route}) async {
    final router = ref.read(goRouterProvider);

    state = ExoState.exoInitial();

    if (ref.read(authViewModelProvider.notifier).isAuthenticated()) {
      state = ExoState.exoLoading();

      await ref
          .read(subscriptionViewModelProvider.notifier)
          .checkSubscription();

      state = ExoState.exoInitial();
      router.push(route);
    } else {
      router.push('/signin');
    }
  }

  void setState(ExoState state_) {
    state = state_;
  }
}
