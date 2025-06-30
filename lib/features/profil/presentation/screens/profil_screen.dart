import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';
import 'package:scientiboost/features/internet/presentation/viewmodels/internet_viewmodel.dart';

import 'package:scientiboost/core/providers.dart';
import 'package:scientiboost/core/common_widgets/button_arrow_forward.dart';

class ProfilScreen extends ConsumerWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authViewModelProvider);
    ref.watch(subscriptionViewModelProvider);
    ref.watch(internetViewmodelProvider);

    final user_ = ref.read(authViewModelProvider.notifier).getUser();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 16, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Email:   ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  TextSpan(text: user_?.email),
                ],
              ),
            ),

            const SizedBox(height: 20),

            ButtonArrowForward(
              text: 'Mon abonnement',
              onPressed: () {
                ref
                    .read(subscriptionViewModelProvider.notifier)
                    .setState(SubscriptionState.subscriptionInitial());

                ref
                    .read(internetViewmodelProvider.notifier)
                    .setState(InternetState.internetInitial());

                ref.read(goRouterProvider).push('/subscription-infos');
              },
            ),
          ],
        ),
      ),
    );
  }
}
