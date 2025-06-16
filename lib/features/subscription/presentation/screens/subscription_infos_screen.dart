import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/subscription_viewmodel.dart';

import '../../data/models/subscription_model.dart';

class SubscriptionInfosScreen extends ConsumerWidget {
  const SubscriptionInfosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subscriptionState = ref.watch(subscriptionViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Abonnement')),
      body: () {
        if (subscriptionState case SubscriptionLoading()) {
          return const Center(child: CircularProgressIndicator());
        } else if (subscriptionState case Subscribed(:final subscription)) {
          return _buildPage(context, ref, subscription);
        } else if (subscriptionState case SubscriptionError(:final message)) {
          return Center(
            child: Column(
              children: [
                Text(message, style: const TextStyle(color: Colors.red)),
                _checkButton(context, ref),
              ],
            ),
          );
        } else if (subscriptionState case Unsubscribed()) {
          return Center(
            child: Column(
              children: [
                const Text("Vous n'avez pas d'abonnement valide actuellement"),
                _checkButton(context, ref),
              ],
            ),
          );
        } else {
          return Center(child: _checkButton(context, ref));
        }
      }(),
    );
  }

  Widget _checkButton(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        ref.read(subscriptionViewModelProvider.notifier).checkSubscription();
      },

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        padding: EdgeInsets.symmetric(horizontal: 12),
      ),

      child: Text(
        "Vérifier mon abonnement",
        style: TextStyle(fontSize: 14),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildPage(
    BuildContext context,
    WidgetRef ref,
    SubscriptionModel subscription,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Abonnement',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
            'Matières: ${subscription.subjects?.join(", ")}',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 8),
          Text(
            'Prix: ${subscription.price?.toStringAsFixed(2)} Franc CFA',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 8),
          Text(
            'Statut: ${ref.read(subscriptionViewModelProvider.notifier).isSubscribed() ? "Valide" : "Expiré"}',
            style: TextStyle(
              fontSize: 16,
              color:
                  ref
                          .read(subscriptionViewModelProvider.notifier)
                          .isSubscribed()
                      ? Colors.green
                      : Colors.red,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Important: Vous devez attendre la fin de cet abonnement avant de vous réabonner',
            style: TextStyle(fontSize: 16, color: Colors.red),
          ),
          _checkButton(context, ref),
        ],
      ),
    );
  }
}
