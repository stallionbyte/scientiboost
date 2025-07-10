import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/providers.dart';
import 'package:scientiboost/core/common_widgets/titre.dart';

class SubscriptionPerksScreen extends ConsumerWidget {
  const SubscriptionPerksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Abonnement',
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: _buildPage(ref),
    );
  }

  Widget _buildDuration() {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 20, color: Colors.black),
        children: <TextSpan>[
          TextSpan(
            text: 'Durée:   ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          TextSpan(
            text: '1 an',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrice() {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 20, color: Colors.black),
        children: <TextSpan>[
          TextSpan(
            text: 'Prix:   ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          TextSpan(
            text: '5000 ',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),

          TextSpan(
            text: 'par matière',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPerk({required String perk}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.check_circle, color: Colors.green, size: 24),
        SizedBox(width: 12),
        Expanded(
          child: Text(
            perk,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ),
      ],
    );
  }

  Widget _buildSubscriptionButton({required WidgetRef ref}) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {
          ref.read(goRouterProvider).push('/subscription');
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
    );
  }

  Widget _buildPage(WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),

            _buildDuration(),

            SizedBox(height: 16),

            _buildPrice(),

            SizedBox(height: 40),

            Titre(title: "Un abonnement inclue"),

            SizedBox(height: 20),

            _buildPerk(
              perk: "Accès illimité aux exercices corrigés de la matière",
            ),

            SizedBox(height: 20.0),

            _buildPerk(
              perk: "Accès illimité aux sujets d'examen corrigés de la matière",
            ),

            SizedBox(height: 16),

            _buildPerk(perk: "Accès illimité aux formules de la matière"),

            SizedBox(height: 20.0),

            _buildPerk(perk: "Accès illimité aux astuces"),

            SizedBox(height: 40),

            _buildSubscriptionButton(ref: ref),
          ],
        ),
      ),
    );
  }
}
