import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';

class SubscriptionButton extends ConsumerWidget {
  const SubscriptionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(subscriptionViewModelProvider);
    return SizedBox(
      height: 36,
      child: ElevatedButton.icon(
        onPressed: () {
          ref.read(subscriptionViewModelProvider.notifier).init();
        },
        icon: Icon(Icons.star, size: 16),
        label: Text(
          "S'abonner",
          style: TextStyle(fontSize: 14),
          overflow: TextOverflow.ellipsis,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12),
        ),
      ),
    );
  }
}
