import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/subscription_viewmodel.dart';

class SubscriptionPerksScreen extends ConsumerWidget {
  const SubscriptionPerksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subscriptionState = ref.watch(subscriptionViewModelProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Abonnement'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: () {
        if (subscriptionState case SubscriptionLoading()) {
          return const Center(child: CircularProgressIndicator());
        } else if (subscriptionState case SubscriptionError(:final message)) {
          return _buildPage(context, ref, error: message);
        } else {
          return _buildPage(context, ref);
        }
      }(),
    );
  }

  Widget _buildPage(BuildContext context, WidgetRef ref, {String? error}) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promière ligne - Durée
          Text(
            'durée: 1 an',
            style: TextStyle(fontSize: 18, color: Colors.black87),
          ),

          SizedBox(height: 16),

          // Deuxième ligne - Prix
          Text(
            'Prix: 5000 par matière',
            style: TextStyle(fontSize: 18, color: Colors.black87),
          ),

          SizedBox(height: 16),

          // Troisième ligne - Sous-titre
          Text(
            'Un abonnement inclue',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 20),

          // Quatrième ligne - Premier avantage
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check, color: Colors.green, size: 24),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Accès illimité aux exercices corrigés de la matière',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),

          // Cinquième ligne - Deuxième avantage
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check, color: Colors.green, size: 24),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Accès illimité aux sujets d\'examen corrigés de la matière',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),

          // affichage des erreurs
          if (error != null) ...[
            Text(error, style: const TextStyle(color: Colors.red)),
            SizedBox(height: 40),
          ],

          // Sixième ligne - Bouton d'abonnement
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: () {
                ref
                    .read(subscriptionViewModelProvider.notifier)
                    .goToSubscription();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Abonnement',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
