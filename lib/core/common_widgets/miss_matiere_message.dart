import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';

import 'package:scientiboost/core/common_widgets/button_arrow_forward.dart';

import 'package:scientiboost/core/providers.dart';

class MissMatiereMessage extends ConsumerWidget {
  const MissMatiereMessage({super.key, required this.matieres});

  final String matieres;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text("Vous n'etes pas abonné(e) à $matieres"),
          const SizedBox(height: 20),
          ButtonArrowForward(
            text: 'vérifier mon abonnement',
            backgroundColor: Colors.amber,
            onPressed: () {
              ref
                  .read(subscriptionViewModelProvider.notifier)
                  .setState(SubscriptionState.subscriptionInitial());
              ref.read(goRouterProvider).push('/subscription-infos');
            },
          ),
        ],
      ),
    );
  }
}
