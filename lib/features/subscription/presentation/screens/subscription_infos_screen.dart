import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:scientiboost/core/providers/providers.dart';
import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';
import 'package:scientiboost/features/internet/presentation/viewmodels/internet_viewmodel.dart';

import 'package:scientiboost/core/common_widgets/titre.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart' as helpers;

import 'package:scientiboost/features/subscription/data/models/subscription_model.dart';

import 'package:scientiboost/core/constants/constants.dart';

class SubscriptionInfosScreen extends ConsumerStatefulWidget {
  const SubscriptionInfosScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SubscriptionInfosScreenState();
}

class _SubscriptionInfosScreenState
    extends ConsumerState<SubscriptionInfosScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(internetViewmodelProvider.notifier).setInitial();
      ref.read(subscriptionViewModelProvider.notifier).setInitial();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(internetViewmodelProvider, (previous, next) {
      if (next case InternetError(:final message)) {
        if (mounted) {
          helpers.showSnackBar(
            context: context,
            backgroundColor: Colors.red,
            content: Row(
              children: [
                Icon(Icons.cloud_off_rounded, color: Colors.white),
                SizedBox(width: 8),
                Expanded(child: Text(message)),
              ],
            ),
          );
        }
      } else if (next case InternetIsNotConnected()) {
        if (mounted) {
          helpers.showSnackBar(
            context: context,
            backgroundColor: Colors.red,
            content: Row(
              children: [
                Icon(Icons.signal_wifi_off_rounded, color: Colors.white),
                SizedBox(width: 8),
                Expanded(child: Text(InternetConstants.connexionError)),
              ],
            ),
          );
        }
      }
    });

    ref.listen(subscriptionViewModelProvider, (previous, next) {
      if (next case SubscriptionError(:final message)) {
        if (mounted) {
          helpers.showSnackBar(
            context: context,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.error_rounded, color: Colors.white),
                Text(message, style: const TextStyle(color: Colors.white)),
              ],
            ),
            backgroundColor: Colors.red,
          );
        }
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Abonnements',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.all(20), child: _buildBody()),
      ),
    );
  }

  Widget _checkButton() {
    final authState = ref.watch(authViewModelProvider);
    final subscriptionState = ref.watch(subscriptionViewModelProvider);

    final internetState = ref.watch(internetViewmodelProvider);
    bool isAuth = false;
    bool isLoading = false;

    if (internetState case InternetLoading()) {
      isLoading = true;
    } else if (subscriptionState case SubscriptionLoading()) {
      isLoading = true;
    }

    if (authState case Authenticated()) {
      isAuth = true;
    }

    return ElevatedButton(
      onPressed:
          isAuth
              ? () {
                if (isLoading) {
                  return;
                }
                ref
                    .read(subscriptionViewModelProvider.notifier)
                    .checkSubscriptionsInfos();
              }
              : () {
                ref.read(goRouterProvider).push("/signin");
              },

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        padding: EdgeInsets.all(12),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Vérifier abonnement(s)",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(width: 8),

          isLoading
              ? CircularProgressIndicator(color: Colors.white)
              : Icon(Icons.arrow_forward, color: Colors.white, size: 20),
        ],
      ),
    );
  }

  Widget _buildInfoItem(String label, String value, {Color? valueColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(fontSize: 20, color: Colors.black),
          children: [
            TextSpan(
              text: '$label: ',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: value,
              style: TextStyle(color: valueColor ?? Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInitialContent() {
    return Center(child: _checkButton());
  }

  Widget _buildContentWithIcon({
    required String message,
    required IconData icon_,
  }) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon_, color: Colors.red, size: 50),

          const SizedBox(height: 10),

          Text(
            message,
            style: const TextStyle(fontSize: 16, color: Colors.red),
          ),

          EspConstants.esp40,

          _checkButton(),
        ],
      ),
    );
  }

  Widget _buildSubscribedContent(List<SubscriptionModel> subscriptions) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (var subscription in subscriptions)
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Titre(
                    title: subscription.subject,
                    fontSize: 25.0,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 40),
                  _buildInfoItem(
                    'Date de début',
                    DateFormat.yMMMd("fr_FR").format(subscription.startAt),
                  ),
                  _buildInfoItem(
                    'Date de fin',
                    DateFormat.yMMMd("fr_FR").format(subscription.expireAt),
                  ),
                  _buildInfoItem('Matière', subscription.subject),
                  _buildInfoItem(
                    'Prix',
                    '${subscription.price?.toStringAsFixed(2)} F CFA',
                  ),

                  _buildInfoItem(
                    'Important',
                    "${SubscriptionConstants.subscriptionInfosResubscriptionCondition} à ${subscription.subject}",
                    valueColor: Colors.red,
                  ),

                  EspConstants.esp40,
                ],
              ),
            ),

          _checkButton(),

          const SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Consumer(
      builder: (context, ref, child) {
        final subscriptionState = ref.watch(subscriptionViewModelProvider);

        if (subscriptionState case Unsubscribed()) {
          return _buildContentWithIcon(
            message: SubscriptionConstants.subscriptionInfosUnsubscribedMessage,
            icon_: Icons.error_rounded,
          );
        } else if (subscriptionState case Subscribed(:final subscriptions)) {
          return _buildSubscribedContent(subscriptions);
        } else {
          return _buildInitialContent();
        }
      },
    );
  }
}
