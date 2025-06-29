import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scientiboost/features/subscription/data/models/subscription_model.dart';
import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:scientiboost/features/internet/presentation/viewmodels/internet_viewmodel.dart';

import 'package:scientiboost/core/providers.dart';

part 'subscription_viewmodel.freezed.dart';
part 'subscription_viewmodel.g.dart';

// État immuable de la souscription
@freezed
sealed class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState.subscriptionInitial() = SubscriptionInitial;
  const factory SubscriptionState.subscriptionLoading() = SubscriptionLoading;
  const factory SubscriptionState.subscriptionInit() = SubscriptionInit;
  const factory SubscriptionState.subscriptionPending(
    SubscriptionModel subscription,
  ) = SubscriptionPending;
  const factory SubscriptionState.unsubscribed() = Unsubscribed;
  const factory SubscriptionState.subscribed(SubscriptionModel subscription) =
      Subscribed;
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

  void init() {
    state = SubscriptionState.subscriptionInit();

    final authState = ref.read(authViewModelProvider);
    final router = ref.read(goRouterProvider);

    if (authState case Authenticated()) {
      router.push('/subscription-perks');
    } else {
      router.push('/signin');
    }
  }

  void setState(SubscriptionState state_) {
    state = state_;
  }

  bool isExpired({required DateTime date}) {
    return date.isBefore(DateTime.now());
  }

  Future<void> checkSubscription() async {
    await ref.read(internetViewmodelProvider.notifier).checkInternetAccess();

    if (ref.read(internetViewmodelProvider.notifier).isConnected()) {
      state = SubscriptionState.subscriptionLoading();

      final result =
          await ref.read(subscriptionRepositoryProvider).validSubscription();

      if (result == null) {
        state = SubscriptionState.unsubscribed();
      } else {
        state = result.fold(
          (subscription) => SubscriptionState.subscribed(subscription),
          (error) => SubscriptionState.subscriptionError(error),
        );
      }
    }
  }

  Future<void> goToSubscription() async {
    final router = ref.read(goRouterProvider);

    if (ref.read(authViewModelProvider.notifier).isAuthenticated()) {
      await checkSubscription();
    }

    if (state case Unsubscribed()) {
      router.push('/subscription');
    } else if (state case Subscribed(:final subscription)) {
      state = SubscriptionState.subscriptionError(
        'abonnement valide déja en cours. Expire le : ${subscription.expireAt.toString()}.',
      );
    }
  }

  Future<void> makeSubscriptionPending(
    bool physiqueChimie,
    bool svt,
    bool math,
  ) async {
    final router = ref.read(goRouterProvider);

    await checkSubscription();

    if (state case Unsubscribed()) {
      final subjects = buildSubjects(physiqueChimie, svt, math);

      final userUid = ref.read(authViewModelProvider.notifier).getUser()?.uid;

      final price = buildPrice(physiqueChimie, svt, math);

      DateTime startAt = DateTime.now();

      DateTime expireAt = DateTime.now().add(const Duration(days: 365));

      final subscription = SubscriptionModel(
        userUid: userUid,
        startAt: startAt,
        expireAt: expireAt,
        subjects: subjects,
        price: price,
      );

      state = SubscriptionState.subscriptionPending(subscription);

      router.push('/checkout');
    } else if (state case Subscribed(:final subscription)) {
      state = SubscriptionState.subscriptionError(
        'Vous avez déjà un abonnement valide en cours qui expire le : ${subscription.expireAt.toString()}. Vous devez attendre la fin de cet abonnement avant de vous réabonner.',
      );
    }
  }

  // Gère l'abonnement

  Future<void> addSubscription(
    String? userUid,
    DateTime startAt,
    DateTime expireAt,
    List<String>? subjects,
    double? price,
  ) async {
    state = const SubscriptionState.subscriptionLoading();

    final result = await ref
        .read(subscriptionRepositoryProvider)
        .addSubscription(userUid, startAt, expireAt, subjects, price);

    state = result.fold(
      (subscription) => SubscriptionState.subscribed(subscription),
      (error) => SubscriptionState.subscriptionError(error),
    );
  }

  Future<bool> isSubscribedAsync() async {
    await checkSubscription();

    if (state case Subscribed()) {
      return true;
    } else {
      return false;
    }
  }

  bool isSubscribed() {
    if (state case Subscribed()) {
      return true;
    } else {
      return false;
    }
  }

  SubscriptionModel? getSubscription() {
    if (state case Subscribed(:final subscription)) {
      return subscription;
    } else {
      return null;
    }
  }

  SubscriptionModel? getPendingSubscription() {
    if (state case SubscriptionPending(:final subscription)) {
      return subscription;
    } else {
      return null;
    }
  }

  List<String> buildSubjects(bool physiqueChimie, bool svt, bool math) {
    List<String> subjects = [];

    if (physiqueChimie) {
      subjects.add('pc');
    }
    if (svt) {
      subjects.add('svt');
    }
    if (math) {
      subjects.add('math');
    }

    return subjects;
  }

  double buildPrice(bool physiqueChimie, bool svt, bool math) {
    double count = 0;

    if (physiqueChimie) {
      count++;
    }
    if (svt) {
      count++;
    }
    if (math) {
      count++;
    }

    return count * 5000;
  }
}
