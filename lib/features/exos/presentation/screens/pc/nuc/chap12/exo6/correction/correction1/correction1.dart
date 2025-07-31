import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/reactions/reactions_builders.dart';

class Correction1 extends ConsumerStatefulWidget {
  const Correction1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction1State();
}

class _Correction1State extends ConsumerState<Correction1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp20,

          transition(transition: "Etape 1"),

          EspConstants.esp20,

          alpha(
            scale: 2.0,
            X1: r"U",
            Z1: r"\ \ 92",
            A1: r"238",
            X2: r"X",
            Z2: r"\ \ 90",
            A2: r"234",
          ),

          EspConstants.esp20,

          transition(transition: "Etape 2"),

          EspConstants.esp20,

          betaMoins(
            scale: 2.0,
            X1: r"X",
            Z1: r"\ \ 90",
            A1: r"234",
            X2: r"Y",
            Z2: r"\ \ 91",
            A2: r"234",
          ),

          EspConstants.esp20,

          transition(
            transition: "le noyau produit à la fin de la deuxième étape est",
          ),

          EspConstants.esp20,

          notationNoyau2(X: r"Pa", Z: r"\ \ 91", A: r"234", scale: 1.5),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
