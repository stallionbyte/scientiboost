import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:scientiboost/features/internet/presentation/viewmodels/internet_viewmodel.dart';

import 'package:scientiboost/features/subscription/data/models/subscription_model.dart';
import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

import 'package:scientiboost/core/helpers.dart' as helpers;
import 'package:scientiboost/core/providers.dart';
import 'package:scientiboost/core/constants/constants.dart';

part 'subscription_viewmodel.freezed.dart';
part 'subscription_viewmodel.g.dart';

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

  // sets

  void setInitial() {
    state = const SubscriptionInitial();
  }

  void setLoading() {
    state = const SubscriptionState.subscriptionLoading();
  }

  // checks

  Future<void> checkSubscriptions() async {
    state = const SubscriptionState.subscriptionLoading();

    final result =
        await ref.read(subscriptionRepositoryProvider).validSubscriptions();

    if (result == null) {
      state = const SubscriptionState.unsubscribed();
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

  Future<void> checkSubscriptionsInfos() async {
    final state_ = state;

    state = SubscriptionState.subscriptionLoading();

    final hasInternet =
        await ref
            .read(internetViewmodelProvider.notifier)
            .checkInternetAccess();

    if (hasInternet) {
      await checkSubscriptions();
    } else {
      state = state_;
    }
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

  // handle exos

  Future<void> goToExo({required String route}) async {
    final state_ = state;

    state = SubscriptionState.subscriptionLoading();

    final hasInternet =
        await ref
            .read(internetViewmodelProvider.notifier)
            .checkInternetAccess();

    if (hasInternet) {
      await checkSubscriptions();
      ref.read(goRouterProvider).push(route);
    } else {
      state = state_;
    }
  }

  // chekout

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

  // Handle Pending

  SubscriptionModel createPendingSubscription({required String subject}) {
    final userUid = ref.read(authViewModelProvider.notifier).getUser()?.uid;

    final price = 5000.0;

    DateTime startAt = DateTime.now();

    DateTime expireAt = DateTime.now().add(const Duration(days: 365));

    return SubscriptionModel(
      userUid: userUid,
      startAt: startAt,
      expireAt: expireAt,
      subject: subject,
      price: price,
    );
  }

  Future<void> makeSubscriptionsPending({
    required bool physiqueChimie,
    required bool svt,
    required bool mathematiques,
  }) async {
    final state_ = state;

    state = const SubscriptionState.subscriptionLoading();

    List<SubscriptionModel> subscriptionsPending = [];
    List<SubscriptionModel?> forbidenSubscriptions = [];
    final router = ref.read(goRouterProvider);

    final hasInternet =
        await ref
            .read(internetViewmodelProvider.notifier)
            .checkInternetAccess();

    if (hasInternet) {
      await checkSubscriptions();

      if (state case Subscribed(:final subscriptions)) {
        if (physiqueChimie) {
          if (isSubscribed(
            subject: "Physique-Chimie",
            subscriptions: subscriptions,
          )) {
            forbidenSubscriptions.add(
              getSubscription(
                subject: "Physique-Chimie",
                subscriptions: subscriptions,
              ),
            );
          } else {
            subscriptionsPending.add(
              createPendingSubscription(subject: "Physique-Chimie"),
            );
          }
        }

        if (svt) {
          if (isSubscribed(subject: "SVT", subscriptions: subscriptions)) {
            forbidenSubscriptions.add(
              getSubscription(subject: "SVT", subscriptions: subscriptions),
            );
          } else {
            subscriptionsPending.add(createPendingSubscription(subject: "SVT"));
          }
        }

        if (mathematiques) {
          if (isSubscribed(
            subject: "Mathématiques",
            subscriptions: subscriptions,
          )) {
            forbidenSubscriptions.add(
              getSubscription(
                subject: "Mathématiques",
                subscriptions: subscriptions,
              ),
            );
          } else {
            subscriptionsPending.add(
              createPendingSubscription(subject: "Mathématiques"),
            );
          }
        }

        if (forbidenSubscriptions.isEmpty) {
          state = SubscriptionsPending(subscriptionsPending);
        }
      } else {
        if (physiqueChimie) {
          subscriptionsPending.add(
            createPendingSubscription(subject: "Physique-Chimie"),
          );
        }

        if (svt) {
          subscriptionsPending.add(createPendingSubscription(subject: "SVT"));
        }

        if (mathematiques) {
          subscriptionsPending.add(
            createPendingSubscription(subject: "Mathématiques"),
          );
        }

        state = SubscriptionsPending(subscriptionsPending);
      }

      if (forbidenSubscriptions.isEmpty) {
        router.push("/checkout");
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

  // others

  SubscriptionModel? getSubscription({
    required String subject,
    required List<SubscriptionModel> subscriptions,
  }) {
    for (var subscription in subscriptions) {
      if (subscription.subject == subject) {
        return subscription;
      }
    }

    return null;
  }
}
