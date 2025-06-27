import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/first_app_bar.dart';
import 'package:scientiboost/core/common_widgets/third_app_bar.dart';
import 'package:scientiboost/core/common_widgets/miss_matiere_message.dart';
import 'package:scientiboost/core/common_widgets/unsubscribed_message.dart';
import 'package:scientiboost/core/providers.dart';

import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';
import 'package:scientiboost/features/exos/presentation/viewmodels/exo_viewmodel.dart';

class ExoScreen extends ConsumerStatefulWidget {
  const ExoScreen({
    super.key,
    required this.enonce,
    required this.correction,
    required this.matiere,
    required this.chapNum,
    required this.chapTitle,
    required this.exoNum,
    required this.route,
    required this.favorites,
  });

  final Widget enonce;
  final Widget correction;
  final String matiere;
  final int chapNum;
  final String chapTitle;
  final int exoNum;
  final String route;
  final String favorites;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExoScreenState();
}

class _ExoScreenState extends ConsumerState<ExoScreen> {
  bool isCorrectionVisible = false; // Variable d'état locale

  @override
  Widget build(BuildContext context) {
    ref.watch(exoViewmodelProvider);
    ref.watch(sharedPreferencesProvider);

    return Scaffold(
      appBar: FirstAppBar(),
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [_buildThirdAppBar(), Expanded(child: _buildExercice())],
        ),
      ),
    );
  }

  Widget _buildThirdAppBar() {
    return ThirdAppBar(
      storageFavoritesKey: widget.favorites,
      favoriteRoute: widget.route,
    );
  }

  Widget _buildExercice() {
    final subscriptionState = ref.watch(subscriptionViewModelProvider);

    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Matère:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '   ${widget.matiere}'),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Chapitre ${widget.chapNum}:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '   ${widget.chapTitle}'),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 40),

          Text(
            'Exercice ${widget.exoNum}',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 20),

          widget.enonce,

          SizedBox(height: 40),

          // Bouton toggle correction
          ElevatedButton(
            onPressed: () {
              setState(() {
                isCorrectionVisible =
                    !isCorrectionVisible; // Mise à jour locale
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Fond bleu
              foregroundColor: Colors.white, // Texte et icône blancs
              padding: const EdgeInsets.all(12.0), // Espacement interne
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18), // Coins arrondis
              ),
            ),
            child: Text(
              isCorrectionVisible ? 'Masquer correction' : 'Voir correction',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),

          const SizedBox(height: 40),

          // Afficher la correction seulement si elle est visible
          if (isCorrectionVisible) ...[
            () {
              if (subscriptionState case Subscribed(:final subscription)) {
                if (subscription.subjects?.contains('pc') as bool) {
                  return widget.correction;
                } else {
                  return MissMatiereMessage(matieres: 'PC');
                }
              } else {
                return UnsubscribedMessage();
              }
            }(),

            const SizedBox(height: 30),
          ],
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
