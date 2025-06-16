import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/subscription_viewmodel.dart';

class CheckoutScreen extends ConsumerWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subscription =
        ref
            .read(subscriptionViewModelProvider.notifier)
            .getPendingSubscription();
    return Scaffold(
      appBar: AppBar(title: const Text('Paiement')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'API Payement',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Date de début: ${subscription?.startAt.toString()}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Date de fin: ${subscription?.expireAt.toString()}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Matières: ${subscription?.subjects?.join(", ")}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Prix: ${subscription?.price?.toStringAsFixed(2)} Franc CFA',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),

            ElevatedButton(
              onPressed: () {
                ref
                    .read(subscriptionViewModelProvider.notifier)
                    .addSubscription(
                      subscription?.userUid,
                      subscription?.startAt as DateTime,
                      subscription?.expireAt as DateTime,
                      subscription?.subjects,
                      subscription?.price,
                    );
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
    );
  }
}
