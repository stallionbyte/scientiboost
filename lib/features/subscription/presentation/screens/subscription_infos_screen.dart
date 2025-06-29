import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';
import 'package:scientiboost/features/internet/presentation/viewmodels/internet_viewmodel.dart';

import 'package:scientiboost/features/subscription/data/models/subscription_model.dart';

import 'package:scientiboost/core/constants.dart';

import 'package:scientiboost/core/helpers.dart' as helpers;

class SubscriptionInfosScreen extends ConsumerWidget {
  const SubscriptionInfosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subscriptionState = ref.watch(subscriptionViewModelProvider);
    final internetState = ref.watch(internetViewmodelProvider);

    if (internetState case InternetError(:final message)) {
      helpers.scheduleShowSnackBar(
        context: context,
        content: Row(
          children: [
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(Icons.cloud_off_rounded, color: Colors.white),
          ],
        ),

        backgroundColor: Colors.red,
        duration: Duration(seconds: 10),
      );
    } else if (internetState case InternetIsNotConnected()) {
      helpers.scheduleShowSnackBar(
        context: context,
        content: Row(
          children: [
            Text(
              InternetConstants.connexionError,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            SizedBox(width: 8),

            Icon(Icons.cloud_off_rounded, color: Colors.white),
          ],
        ),
        backgroundColor: Colors.red,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Abonnement',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: () {
        if (subscriptionState case SubscriptionLoading()) {
          return const Center(child: CircularProgressIndicator());
        } else if (subscriptionState case Subscribed(:final subscription)) {
          return _buildPage(context, ref, subscription);
        } else if (subscriptionState case SubscriptionError(:final message)) {
          helpers.scheduleShowSnackBar(
            context: context,
            content: Text(message),
            backgroundColor: Colors.red,
          );
          return Center(child: _checkButton(context, ref));
        } else if (subscriptionState case Unsubscribed()) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Vous n'avez pas d'abonnement valide actuellement",
                  ),
                  SizedBox(height: 40),
                  _checkButton(context, ref),
                ],
              ),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Veuillez vérifier votre connexion internet avant de commencer",
                  ),
                  SizedBox(height: 40),
                  _checkButton(context, ref),
                ],
              ),
            ),
          );
        }
      }(),
    );
  }

  Widget _checkButton(BuildContext context, WidgetRef ref) {
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

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Vérifier mon abonnement",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),

          if (ref.watch(internetViewmodelProvider) case InternetLoading()) ...[
            SizedBox(width: 8),
            CircularProgressIndicator(color: Colors.white),
          ],
        ],
      ),
    );
  }

  Widget _buildPage(
    BuildContext context,
    WidgetRef ref,
    SubscriptionModel subscription,
  ) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Date de début:  ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    TextSpan(text: subscription.startAt.toString()),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Date de fin:  ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    TextSpan(text: subscription.expireAt.toString()),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Matière(s):  ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    TextSpan(text: subscription.subjects?.join(", ")),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Prix:  ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    TextSpan(
                      text:
                          '${subscription.price?.toStringAsFixed(2)} Franc CFA',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Statut:  ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    TextSpan(
                      text: 'valide',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Important:  ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    TextSpan(
                      text:
                          'Vous devez attendre la fin de cet abonnement avant de vous réabonner',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              _checkButton(context, ref),
            ],
          ),
        ),
      ),
    );
  }
}
