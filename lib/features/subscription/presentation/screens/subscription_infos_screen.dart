import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';
import 'package:scientiboost/features/internet/presentation/viewmodels/internet_viewmodel.dart';

import 'package:scientiboost/features/subscription/data/models/subscription_model.dart';

import 'package:scientiboost/core/constants.dart';

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
      ref.read(internetViewmodelProvider.notifier).setStateInitial();
      ref.read(subscriptionViewModelProvider.notifier).setStateInitial();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Abonnement',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.all(20), child: _buildBody()),
      ),
    );
  }

  Widget _checkButton() {
    return ElevatedButton(
      onPressed: () async {
        await ref
            .read(subscriptionViewModelProvider.notifier)
            .checkSubscription();
      },

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        padding: EdgeInsets.all(12),
      ),

      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Vérifier mon abonnement",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            SubscriptionConstants.subscriptionInfosInitialMessage,
            style: TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 20.0),
          _checkButton(),
        ],
      ),
    );
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

          const SizedBox(height: 20),

          _checkButton(),
        ],
      ),
    );
  }

  Widget _buildSubscribedContent(SubscriptionModel subscription) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoItem(
            'Date de début',
            DateFormat.yMMMd("fr_FR").format(subscription.startAt),
          ),
          _buildInfoItem(
            'Date de fin',
            DateFormat.yMMMd("fr_FR").format(subscription.expireAt),
          ),
          _buildInfoItem(
            'Matière(s)',
            subscription.subjects?.join(", ") ?? 'Aucune',
          ),
          _buildInfoItem(
            'Prix',
            '${subscription.price?.toStringAsFixed(2) ?? '0.00'} F CFA',
          ),

          _buildInfoItem(
            'Important',
            SubscriptionConstants.subscriptionInfosResubscriptionCondition,
            valueColor: Colors.red,
          ),

          const SizedBox(height: 40),

          _checkButton(),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Consumer(
      builder: (context, ref, child) {
        final subscriptionState = ref.watch(subscriptionViewModelProvider);
        final internetState = ref.watch(internetViewmodelProvider);

        if (subscriptionState case SubscriptionLoading()) {
          return const Center(child: CircularProgressIndicator());
        } else if (internetState case InternetLoading()) {
          return const Center(child: CircularProgressIndicator());
        } else if (internetState case InternetIsNotConnected()) {
          return _buildContentWithIcon(
            message: InternetConstants.connexionError,
            icon_: Icons.signal_wifi_off_rounded,
          );
        } else if (internetState case InternetError(:final message)) {
          return _buildContentWithIcon(
            message: message,
            icon_: Icons.cloud_off_rounded,
          );
        } else if (subscriptionState case SubscriptionError(:final message)) {
          return _buildContentWithIcon(
            message: message,
            icon_: Icons.error_rounded,
          );
        } else if (subscriptionState case Unsubscribed()) {
          return _buildContentWithIcon(
            message: SubscriptionConstants.subscriptionInfosUnsubscribedMessage,
            icon_: Icons.error_rounded,
          );
        } else if (subscriptionState case Subscribed(:final subscription)) {
          return _buildSubscribedContent(subscription);
        } else {
          return _buildInitialContent();
        }
      },
    );
  }
}
