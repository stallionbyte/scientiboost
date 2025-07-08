import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:scientiboost/features/internet/presentation/viewmodels/internet_viewmodel.dart';

import 'package:scientiboost/features/subscription/data/models/subscription_model.dart';
import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

import 'package:scientiboost/core/helpers.dart' as helpers;
import 'package:scientiboost/core/providers.dart';
import 'package:scientiboost/core/constants.dart';

part 'subscription_viewmodel.freezed.dart';
part 'subscription_viewmodel.g.dart';

List<SubscriptionModel> _subscriptionsPending = [];
List<SubscriptionModel?> forbidenSubscriptions = [];

// État immuable de la souscription
@freezed
sealed class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState.subscriptionInitial() = SubscriptionInitial;
  const factory SubscriptionState.subscriptionLoading() = SubscriptionLoading;
  const factory SubscriptionState.subscriptionsPending(
    List<SubscriptionModel> subscriptions,
  ) = SubscriptionsPending;
  const factory SubscriptionState.unsubscribed() = Unsubscribed;
  const factory SubscriptionState.subscribed(
    List<SubscriptionModel> subscriptions,
  ) = Subscribed;
  const factory SubscriptionState.subscriptionError(String message) =
      SubscriptionError;
}

// ViewModel pour la logique de souscription
@riverpod
class SubscriptionViewModel extends _$SubscriptionViewModel {
  @override
  SubscriptionState build() {
    return const SubscriptionState.subscriptionInitial();
  }

  Future<void> checkSubscriptionsInfos() async {
    final state_ = state;

    state = SubscriptionState.subscriptionLoading();

    await ref.read(internetViewmodelProvider.notifier).checkInternetAccess();

    final hasInternet = await helpers.hasInternet();

    if (hasInternet) {
      await checkSubscriptions();
    } else {
      state = state_;
    }
  }

  Future<void> goToExo({required String route}) async {
    final state_ = state;

    state = SubscriptionState.subscriptionLoading();

    await ref.read(internetViewmodelProvider.notifier).checkInternetAccess();

    final hasInternet = await helpers.hasInternet();

    if (hasInternet) {
      await ref
          .read(subscriptionViewModelProvider.notifier)
          .checkSubscriptions();
      ref.read(goRouterProvider).push(route);
    } else {
      state = state_;
    }
  }

  void setState(SubscriptionState state_) {
    state = state_;
  }

  List<SubscriptionModel> getSubscriptionsPending() {
    return _subscriptionsPending;
  }

  void setStateInitial() {
    state = SubscriptionInitial();
  }

  void setLoading() {
    state = SubscriptionState.subscriptionLoading();
  }

  void initializeSubscriptionsPending() {
    _subscriptionsPending = [];
  }

  bool isSubscribed({
    required String subject,
    required List<SubscriptionModel> subscriptions,
  }) {
    bool isSubscribed = false;

    for (var subscription in subscriptions) {
      if (subscription.subject == subject) {
        isSubscribed = subscription.expireAt.isAfter(DateTime.now());
        break;
      }
    }
    return isSubscribed;
  }

  SubscriptionModel? getSubscription({
    required String subject,
    required List<SubscriptionModel> subscriptions,
  }) {
    SubscriptionModel? subscription_;

    for (var subscription in subscriptions) {
      if (subscription.subject == subject) {
        subscription_ = subscription;
      }
    }

    return subscription_;
  }

  Future<void> checkSubscriptions() async {
    state = SubscriptionState.subscriptionLoading();

    final result =
        await ref.read(subscriptionRepositoryProvider).validSubscriptions();

    if (result == null) {
      state = SubscriptionState.unsubscribed();
    } else {
      state = result.fold(
        (subscriptions) {
          return SubscriptionState.subscribed(subscriptions);
        },
        (error) {
          return SubscriptionState.subscriptionError(error);
        },
      );
    }
  }

  Future<void> goToCheckout() async {
    state = SubscriptionState.subscriptionsPending(_subscriptionsPending);
    _subscriptionsPending = [];
    await ref.read(goRouterProvider).push("/checkout");
  }

  Future<void> checkSubscriptionsAndInternet() async {
    await ref.read(internetViewmodelProvider.notifier).checkInternetAccess();
    await checkSubscriptions();
  }

  void makeVerifiedSubscriptionPending({
    required String subject,
    required List<SubscriptionModel> subscriptions,
  }) {
    if (isSubscribed(subject: subject, subscriptions: subscriptions)) {
      forbidenSubscriptions.add(
        getSubscription(subject: subject, subscriptions: subscriptions),
      );
    } else {
      makeSubscriptionPending(subject: subject);
    }
  }

  Future<void> makeSubscriptionsPending({
    required bool physiqueChimie,
    required bool svt,
    required bool mathematiques,
  }) async {
    final state_ = state;

    state = SubscriptionState.subscriptionLoading();

    await ref.read(internetViewmodelProvider.notifier).checkInternetAccess();

    final hasInternet = await helpers.hasInternet();

    if (hasInternet) {
      _subscriptionsPending = [];

      await checkSubscriptions();

      if (state case Subscribed(:final subscriptions)) {
        forbidenSubscriptions = [];

        if (physiqueChimie) {
          makeVerifiedSubscriptionPending(
            subject: "Physique-Chimie",
            subscriptions: subscriptions,
          );
        }

        if (svt) {
          makeVerifiedSubscriptionPending(
            subject: "SVT",
            subscriptions: subscriptions,
          );
        }

        if (mathematiques) {
          makeVerifiedSubscriptionPending(
            subject: "Mathématiques",
            subscriptions: subscriptions,
          );
        }
      } else {
        if (physiqueChimie) {
          makeSubscriptionPending(subject: "Physique-Chimie");
        }

        if (svt) {
          makeSubscriptionPending(subject: "SVT");
        }

        if (mathematiques) {
          makeSubscriptionPending(subject: "Mathématiques");
        }
      }

      if (forbidenSubscriptions.isEmpty) {
        goToCheckout();
      } else {
        StringBuffer forbidenMessage = StringBuffer(
          "Vous êtes déja abonné(e) à: \n",
        );

        for (var forbidenSubscription in forbidenSubscriptions) {
          forbidenMessage.write(
            "- ${helpers.getSubjectShortName(subject: forbidenSubscription?.subject as String).toUpperCase()}: expire le ${DateFormat.yMMMd("fr_FR").format(forbidenSubscription?.expireAt as DateTime)} \n",
          );
        }

        forbidenMessage.write(SubscriptionConstants.subscriptionsForbiden);

        state = SubscriptionState.subscriptionError(forbidenMessage.toString());
      }
    } else {
      state = state_;
    }
  }

  void makeSubscriptionPending({required String subject}) {
    final userUid = ref.read(authViewModelProvider.notifier).getUser()?.uid;

    final price = 5000.0;

    DateTime startAt = DateTime.now();

    DateTime expireAt = DateTime.now().add(const Duration(days: 365));

    final subscription = SubscriptionModel(
      userUid: userUid,
      startAt: startAt,
      expireAt: expireAt,
      subject: subject,
      price: price,
    );

    _subscriptionsPending.add(subscription);
  }

  // Gère l'abonnement

  Future<void> addSubscriptions({
    required List<SubscriptionModel> subscriptions,
  }) async {
    state = const SubscriptionState.subscriptionLoading();

    final result = await ref
        .read(subscriptionRepositoryProvider)
        .addSubscriptions(subscriptions: subscriptions);

    state = result.fold(
      (subscriptions) => SubscriptionState.subscribed(subscriptions),
      (error) => SubscriptionState.subscriptionError(error),
    );
  }

  List<SubscriptionModel> getsubscriptionsPending() {
    if (state case SubscriptionsPending(:final subscriptions)) {
      return subscriptions;
    } else {
      return [];
    }
  }
}
