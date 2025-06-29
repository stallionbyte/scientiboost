import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/common_widgets/button_arrow_forward.dart';

import 'package:scientiboost/features/exos/presentation/viewmodels/exo_viewmodel.dart';

import 'package:scientiboost/core/providers.dart';
import 'package:scientiboost/core/constants.dart';

class ExosScreen extends ConsumerStatefulWidget {
  const ExosScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExosScreenState();
}

class _ExosScreenState extends ConsumerState<ExosScreen> {
  @override
  Widget build(BuildContext context) {
    ref.watch(goRouterProvider);
    ref.watch(exoViewmodelProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Classe:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '   Terminale D'),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 40),

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

          SizedBox(height: 40),

          Row(
            children: [
              Expanded(
                child: Text(
                  'Physique',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

          SizedBox(height: 40),

          Row(
            children: [
              Expanded(
                child: Text(
                  'Nucléaire',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

          SizedBox(height: 40),

          _buildNuclaireAccordion(context, ref),
        ],
      ),
    );
  }

  Widget _buildNuclaireAccordion(BuildContext context, WidgetRef ref) {
    return ExpansionPanelList.radio(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.zero,
      children: [
        ExpansionPanelRadio(
          value: 'phyNucChap11',
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                'chapitre 11: le noyau atomique',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            );
          },
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,

                  child: ButtonArrowForward(
                    text: 'Exercice 1',

                    onPressed: () {
                      ref
                          .read(exoViewmodelProvider.notifier)
                          .goToExercice(
                            route:
                                RoutesNamesConstants.pcNucChap11ExosRoutesExo1,
                          );
                    },
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,

                  child: ButtonArrowForward(
                    text: 'Exercice 2',
                    onPressed: () {
                      ref
                          .read(exoViewmodelProvider.notifier)
                          .goToExercice(
                            route:
                                RoutesNamesConstants.pcNucChap11ExosRoutesExo2,
                          );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
