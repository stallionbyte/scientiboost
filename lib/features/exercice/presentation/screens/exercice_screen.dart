import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tex/flutter_tex.dart';

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

              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: <InlineSpan>[
                    const TextSpan(
                      text:
                          "Après le cours sur le noyau atomique, tu te retrouve avec tes camarades dans un groupe de travail pour traiter des exercices. L'un de tes camarades apporte l'exercice suivant: << l'hélium 4 est un nucléide représenté par le symbole ",
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: TeX2SVG(
                        math: r"_{4}^{9}He",
                        formulaWidgetBuilder: (context, svg) {
                          double displayFontSize = 25;
                          return SvgPicture.string(
                            svg,
                            height: displayFontSize,
                            width: displayFontSize,
                            fit: BoxFit.contain,
                            alignment: Alignment.center,
                          );
                        },
                      ),
                    ),
                    const TextSpan(
                      text:
                          ". Le bérillium 9 est un nucléide représenté par le symbole ",
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: TeX2SVG(
                        math: r"_{4}^{9}Be",
                        formulaWidgetBuilder: (context, svg) {
                          double displayFontSize = 25;
                          return SvgPicture.string(
                            svg,
                            height: displayFontSize,
                            width: displayFontSize,
                            fit: BoxFit.contain,
                            alignment: Alignment.center,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              Text(
                '1) Donner une définition du terme nucléide',
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),

              // faire ainsi pour les autre texte
              Container(
                alignment: Alignment.centerLeft, // Aligne à gauche
                // Ajoute un léger espace en haut si nécessaire
                child: Text(
                  '2) Pour chaque nucléide',
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),

              Text(
                'a) Déterminer le nombre de nucléons',
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),

              Text(
                'b) Déterminer le nombre de protons.',
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),

              Text(
                'c) Déterminer le nombre de neutrons.',
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),

              Text(
                '3) Donner la composition du noyau de chaque nucléide >>',
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),

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
                  color:
                      selectedMode == 'reponses' ? Colors.blue : Colors.orange,
                ),
              ),
              const SizedBox(height: 30),

              // Accordion
              selectedMode == 'reponses'
                  ? _buildReponsesAccordion()
                  : _buildCorrectionAccordion(),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReponsesAccordion() {
    return ExpansionPanelList.radio(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.zero,
      children: [
        ExpansionPanelRadio(
          value: 'question2a',
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                '2) a) Déterminons le nombre de nucléons pour chaque nucléide',
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
              title: const Text(
                'b) Déterminons le nombre de protons pour chaque nucléide',
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
              title: const Text(
                'c) Déterminons le nombre de neutrons pour chaque nucléide',
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
