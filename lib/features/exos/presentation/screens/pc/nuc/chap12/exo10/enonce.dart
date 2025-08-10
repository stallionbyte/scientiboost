import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap12Exo10Enonce extends ConsumerWidget {
  const PcNucChap12Exo10Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Vous êtes géophysicien(ne) spécialisé(e) en prospection minière pour une compagnie d'extraction d'uranium. Lors d'une mission d'exploration dans une région prometteuse, vos détecteurs identifient la présence de radium-226 (²²⁶Ra) dans les échantillons de minerai, indicateur de gisements d'uranium. Le radium-226 est un émetteur alpha qui se désintègre selon l'équation : ²²⁶Ra → ²²²Rn + particule alpha. \n\n Vos analyses révèlent qu'un échantillon de minerai contient N₀ = 1,8 x 10¹⁷ noyaux de radium-226. Pour évaluer le potentiel économique de ce gisement et planifier l'exploitation sur plusieurs générations, vous devez modéliser l'évolution de cette radioactivité naturelle. Les masses nucléaires sont : m(²²⁶Ra) = 226,025403 u et m(²²²Rn) = 222,017571 u. \n \n",
        ),

        sbTxt(
          txt:
              "1) Calculer la perte de masse lors de la désintégration alpha du radium-226. \n \n",
        ),

        sbTxt(
          txt: "2) Calculer l'énergie libérée par cette désintégration. \n \n",
        ),

        sbTxt(
          txt:
              "3) a) On pose t = nT, exprimer le nombre de noyaux de l'échantillon en fonction de n et du nombre de noyaux initiaux N₀. \n \n",
        ),

        sbTxt(
          txt:
              "b) Calculer le nombre de noyaux restant dans l'échantillon à t = 3T. \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
