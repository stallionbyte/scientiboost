import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tex/flutter_tex.dart';

import '../../../../../../../core/common_widgets/first_app_bar.dart';

import '../../../../../../subscription/presentation/viewmodels/subscription_viewmodel.dart';
import '../../../../../../exos/presentation/viewmodels/exo_viewmodel.dart';

// Provider pour gérer la visibilité de la correction
final correctionVisibilityProvider = StateProvider<bool>((ref) => false);

class PcNucChap11Exo1Screen extends ConsumerStatefulWidget {
  const PcNucChap11Exo1Screen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcNucChap11Exo1ScreenState();
}

class _PcNucChap11Exo1ScreenState extends ConsumerState<PcNucChap11Exo1Screen> {
  @override
  Widget build(BuildContext context) {
    ref.watch(exoViewmodelProvider);
    final subscriptionState = ref.watch(subscriptionViewModelProvider);
    final isCorrectionVisible = ref.watch(correctionVisibilityProvider);

    return Scaffold(
      appBar: FirstAppBar(),
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 40),

              Text(
                'Exercice',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 20),
              Text('Enoncé..'),
              SizedBox(height: 40),

              // Bouton toggle correction
              GestureDetector(
                onTap: () {
                  ref.read(correctionVisibilityProvider.notifier).state =
                      !isCorrectionVisible;
                },

                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.amber, width: 1),
                  ),
                  child: Text(
                    isCorrectionVisible
                        ? 'Masquer correction'
                        : 'Voir correction',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Afficher la correction seulement si elle est visible
              if (isCorrectionVisible) ...[
                () {
                  if (subscriptionState case Subscribed(:final subscription)) {
                    if (subscription.subjects?.contains('pc') as bool) {
                      return Text('abonnement pc');
                    } else {
                      return Text("Vous n'etes pas abonné à PC");
                    }
                  } else {
                    return Text(
                      'correction réservé aux abonnés <verifier mon abonnement>',
                    );
                  }
                }(),

                Text(
                  'Correction',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),

                const SizedBox(height: 30),

                _buildCorrectionAccordion(),
              ],

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCorrectionAccordion() {
    return ExpansionPanelList.radio(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.zero,
      children: [
        ExpansionPanelRadio(
          value: 'definition',
          headerBuilder: (context, isExpanded) {
            return ListTile(
              leading: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Donnons une définition du terme nucléide',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            );
          },
          body: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Définition du terme nucléide...',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
        ExpansionPanelRadio(
          value: 'correction2a',
          headerBuilder: (context, isExpanded) {
            return ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        'a',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              title: const Text(
                'Déterminons le nombre de nucléons pour chaque nucléide',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            );
          },
          body: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Correction pour déterminer le nombre de nucléons...',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
        ExpansionPanelRadio(
          value: 'correction2b',
          headerBuilder: (context, isExpanded) {
            return ListTile(
              leading: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    'b',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Déterminons le nombre de protons pour chaque nucléide',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            );
          },
          body: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Correction pour déterminer le nombre de protons...',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
