import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/common_widgets/first_app_bar.dart';

// Provider pour gérer l'état du bouton radio sélectionné
final selectedModeProvider = StateProvider<String>((ref) => 'reponses');

class ExerciceScreen extends ConsumerWidget {
  const ExerciceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedMode = ref.watch(selectedModeProvider);

    return Scaffold(
      appBar: FirstAppBar(),
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            // Boutons radio en haut
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Bouton Réponses
                GestureDetector(
                  onTap:
                      () =>
                          ref.read(selectedModeProvider.notifier).state =
                              'reponses',
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color:
                          selectedMode == 'reponses'
                              ? Colors.blue
                              : Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color:
                            selectedMode == 'reponses'
                                ? Colors.blue
                                : Colors.grey[300]!,
                        width: 1,
                      ),
                    ),
                    child: Text(
                      'Réponses',
                      style: TextStyle(
                        color:
                            selectedMode == 'reponses'
                                ? Colors.white
                                : Colors.grey[600],
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // Bouton Correction
                GestureDetector(
                  onTap:
                      () =>
                          ref.read(selectedModeProvider.notifier).state =
                              'correction',
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color:
                          selectedMode == 'correction'
                              ? Colors.orange
                              : Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color:
                            selectedMode == 'correction'
                                ? Colors.orange
                                : Colors.grey[300]!,
                        width: 1,
                      ),
                    ),
                    child: Text(
                      'Correction',
                      style: TextStyle(
                        color:
                            selectedMode == 'correction'
                                ? Colors.white
                                : Colors.grey[600],
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),

            // Titre de la section
            Text(
              selectedMode == 'reponses' ? 'Réponses' : 'Correction',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: selectedMode == 'reponses' ? Colors.blue : Colors.orange,
              ),
            ),
            const SizedBox(height: 30),

            // Accordion
            Expanded(
              child:
                  selectedMode == 'reponses'
                      ? _buildReponsesAccordion()
                      : _buildCorrectionAccordion(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReponsesAccordion() {
    return SingleChildScrollView(
      child: ExpansionPanelList.radio(
        elevation: 1,
        expandedHeaderPadding: EdgeInsets.zero,
        children: [
          ExpansionPanelRadio(
            value: 'question2a',
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
                'Contenu de la réponse pour déterminer le nombre de nucléons...',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          ExpansionPanelRadio(
            value: 'question2b',
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
                'Contenu de la réponse pour déterminer le nombre de protons...',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          ExpansionPanelRadio(
            value: 'question2c',
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
                      'c',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                title: const Text(
                  'Déterminons le nombre de neutrons pour chaque nucléide',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              );
            },
            body: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Contenu de la réponse pour déterminer le nombre de neutrons...',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCorrectionAccordion() {
    return SingleChildScrollView(
      child: ExpansionPanelList.radio(
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
      ),
    );
  }
}
