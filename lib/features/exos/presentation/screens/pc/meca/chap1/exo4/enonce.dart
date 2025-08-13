import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

class PcMecaChap1Exo4Enonce extends ConsumerWidget {
  const PcMecaChap1Exo4Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur hydraulique pour l'Office National de l'Eau et de l'Assainissement (ONEA) du Burkina Faso. Dans le cadre du projet d'extension du réseau d'eau potable de Ouagadougou, tu dois analyser le fonctionnement d'une nouvelle pompe centrifuge installée au château d'eau de Paspanga.\n\nCette pompe est équipée d'un rotor circulaire qui aspire l'eau du forage et la propulse vers le réservoir principal. Pour optimiser le rendement énergétique et assurer un débit constant, tu dois caractériser précisément le mouvement de rotation du rotor.\n\nTon expertise technique déterminera les paramètres de fonctionnement optimal pour alimenter durablement les quartiers périphériques de la capitale.\n\n",
        ),
        transition(transition: "CARACTÉRISTIQUES TECHNIQUES\n\n"),
        sbTxt(
          txt:
              "Le rotor de la pompe effectue un mouvement circulaire uniforme. À t = 0, sa position angulaire initiale est θ₀ = 0 rad. Le rotor tourne à une vitesse de rotation constante de 1800 tours par minute.\n\nLe rayon de rotation des ailettes du rotor est de 15 cm depuis l'axe central.\n\n",
        ),
        transition(transition: "QUESTIONS\n\n"),
        sbTxt(
          txt:
              "1) Établir l'équation horaire de l'abscisse angulaire θ(t) du rotor en fonction du temps.\n\n",
        ),
        sbTxt(txt: "2) Calculer la vitesse linéaire des ailettes\n\n"),
        sbTxt(txt: "3) Calculer la période T de rotation du rotor.\n\n"),
        sbTxt(
          txt:
              "4) Déterminer l'accélération centripète des ailettes du rotor.\n\n",
        ),
      ],
    );
  }
}
