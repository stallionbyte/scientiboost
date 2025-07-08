import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/common_widgets/button_arrow_forward.dart';

import 'package:scientiboost/core/providers.dart';

class UnsubscribedMessage extends ConsumerWidget {
  const UnsubscribedMessage({super.key, required this.subject});
  final String subject;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text("correction réservée aux abonnés de $subject"),
          const SizedBox(height: 20),
          ButtonArrowForward(
            text: 'vérifier mon abonnement',
            backgroundColor: Colors.amber,
            onPressed: () {
              ref.read(goRouterProvider).push('/subscription-infos');
            },
          ),
        ],
      ),
    );
  }
}
