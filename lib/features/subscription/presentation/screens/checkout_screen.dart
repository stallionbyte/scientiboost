import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/subscription_viewmodel.dart';
import 'package:scientiboost/features/subscription/data/models/subscription_model.dart';

class CheckoutScreen extends ConsumerWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subscriptionState = ref.watch(subscriptionViewModelProvider);

    List<SubscriptionModel> subscriptions_ = [];

    if (subscriptionState case SubscriptionsPending(:final subscriptions)) {
      subscriptions_ = subscriptions;
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Paiement')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var subscription in subscriptions_)
                  SizedBox(
                    child: Column(
                      children: [
                        const Text(
                          'API Payement',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Date de début: ${subscription.startAt.toString()}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Date de fin: ${subscription.expireAt.toString()}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Matière: ${subscription.subject}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Prix: ${subscription.price?.toStringAsFixed(2)} F CFA',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),

                const SizedBox(height: 8),

                ElevatedButton(
                  onPressed: () {
                    ref
                        .read(subscriptionViewModelProvider.notifier)
                        .addSubscriptions(subscriptions: subscriptions_);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                  ),
                  child: const Text(
                    "Payer",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
