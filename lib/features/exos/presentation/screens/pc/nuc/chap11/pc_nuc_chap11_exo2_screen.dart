import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tex/flutter_tex.dart';

import '../../../../../../../core/common_widgets/first_app_bar.dart';
import '../../../../../../../core/common_widgets/miss_matiere_message.dart';
import '../../../../../../../core/common_widgets/unsubscribed_message.dart';

import '../../../../../../subscription/presentation/viewmodels/subscription_viewmodel.dart';
import '../../../../../../exos/presentation/viewmodels/exo_viewmodel.dart';

import '../../../../../../../core/providers.dart';
import '../../../../../../../core/constants.dart';
import '../../../../../../../core/common_widgets/third_app_bar.dart';

// Provider pour gérer la visibilité de la correction
/*
final correctionPcNucChap11Exo2VisibilityProvider = StateProvider<bool>(
  (ref) => false,
);
*/

class PcNucChap11Exo2Screen extends ConsumerStatefulWidget {
  const PcNucChap11Exo2Screen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcNucChap11Exo2ScreenState();
}

class _PcNucChap11Exo2ScreenState extends ConsumerState<PcNucChap11Exo2Screen> {
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
      storageFavoritesKey: StorageKeysConstants.favoritesExos,
      favoriteRoute: RoutesNamesConstants.pcNucChap11ExosRoutesExo2,
    );
  }

  Widget _buildCorrectionAccordion() {
    return SingleChildScrollView(
      child: ExpansionPanelList.radio(
        elevation: 1,
        expandedHeaderPadding: EdgeInsets.zero,
        children: [
          ExpansionPanelRadio(
            value: 'uniqueValue',
            headerBuilder: (context, isExpanded) {
              return ListTile(
                title: const Text(
                  '1) question1',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              );
            },
            body: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ),
          ExpansionPanelRadio(
            value: 'uniqueValue2',
            headerBuilder: (context, isExpanded) {
              return ListTile(
                title: const Text(
                  '1) question1',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              );
            },
            body: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                  Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ),
        ],
      ),
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
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Matère:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '   Physique-Chimie'),
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
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Chapitre 11:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '   le noyau atomique'),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 40),

          Text(
            'Exercice 1',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 20),

          Text('Enoncé..'),

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
                  return _buildCorrectionAccordion();
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
