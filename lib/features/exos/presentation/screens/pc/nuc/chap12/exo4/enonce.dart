import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap12Exo4Enonce extends ConsumerWidget {
  const PcNucChap12Exo4Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Vous êtes technicien(ne) spécialisé(e) en médecine nucléaire dans un hôpital universitaire. Le service de cardiologie vous demande de préparer une injection de fluor-18 (¹⁸F) pour un examen TEP (Tomographie par Émission de Positons) permettant de détecter des anomalies cardiaques chez un patient. Le fluor-18 est un radionucléide émetteur β⁺ qui forme de l'oxygène, avec une période de désintégration T = 109,8 minutes. \n\nLe cyclotron de l'hôpital vient de produire un échantillon de ¹⁸F contenant initialement N₀ = 5,9 x 10¹³ noyaux radioactifs. L'examen est programmé dans 3 heures. Vous devez déterminer le nombre de noyaux restants au moment de l'examen et vérifier si cela permettra d'obtenir l'activité minimale requise de 0,8 GBq. \n \n",
        ),

        sbTxt(
          txt:
              "1) Écrire l'équation de désintégration β⁺ du fluor-18. Identifier le noyau père et le noyau fils. \n \n",
        ),

        sbTxt(
          txt:
              "2) Déterminer le nombre de noyaux restants dans l'échantillon au moment de l'examen (3 heures après la production). \n \n",
        ),

        sbTxt(
          txt:
              "3) Calculer l'activité correspondant au nombre de noyaux trouvé à la question 2. Cette activité permet-elle de réaliser l'examen dans de bonnes conditions ? \n \n",
        ),

        sbTxt(
          txt:
              "4) Au bout de combien de temps 3/4 des noyaux initiaux auront disparus ? \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
