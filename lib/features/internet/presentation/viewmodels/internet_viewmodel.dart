import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scientiboost/core/providers.dart';
import 'package:scientiboost/core/constants.dart';

part 'internet_viewmodel.freezed.dart';
part 'internet_viewmodel.g.dart';

@freezed
sealed class InternetState with _$InternetState {
  const factory InternetState.internetInitial() = InternetInitial;
  const factory InternetState.internetLoading() = InternetLoading;
  const factory InternetState.internetIsConnected() = InternetIsConnected;
  const factory InternetState.internetIsNotConnected() = InternetIsNotConnected;
  const factory InternetState.internetError(String message) = InternetError;
}

@riverpod
class InternetViewmodel extends _$InternetViewmodel {
  @override
  InternetState build() {
    return const InternetState.internetInitial();
  }

  Future<void> checkInternetAccess() async {
    state = const InternetState.internetLoading();

    final result =
        await ref.read(internetRepositoryProvider).checkInternetAccess();

    state = result.fold(
      (code) {
        // handle the success here
        if (code == 200) {
          return InternetState.internetIsConnected();
        } else {
          return InternetState.internetIsNotConnected();
        }
      },
      (error) {
        // handle the failure here
        if (error == InternetConstants.connexionError) {
          return InternetState.internetIsNotConnected();
        } else {
          return InternetState.internetError(error);
        }
      },
    );
  }

  void setState(InternetState state_) {
    state = state_;
  }

  void setStateInitial() {
    state = InternetState.internetInitial();
  }

  bool isConnected() {
    if (state case InternetIsConnected()) {
      return true;
    } else {
      return false;
    }
  }
}
