import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'builders.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sbTxt(
            txt:
                "A = 300, donc 300 correspond au nombre de nucléons. On peut donc écrire 300 nucléon",
          ),

          EspConstants.esp20,

          defautDeMasseAvecEnergieDeLiaisonParNucleon(
            eln: r"7,5 \  MeV/nucléon",
            A: r"300 \ nucléon",

            scale: 4.0,
          ),

          EspConstants.esp20,

          defautDeMasseAvecEnergieDeLiaisonParNucleon(
            eln: r"7,5",
            A: r"300 \ MeV/nucléon \ \cdot \  nucléon",
            entraineQue: true,
            scale: 4.0,
          ),

          EspConstants.esp20,

          defautDeMasseAvecEnergieDeLiaisonParNucleon(
            eln: r"7,5",
            A: r"300 \ \frac{MeV}{nucléon} \ \cdot \  nucléon",
            entraineQue: true,
            scale: 4.0,
          ),

          EspConstants.esp20,

          defautDeMasseAvecEnergieDeLiaisonParNucleon(
            eln: r"7,5",
            A: r"300 \ \frac{MeV}{\cancel{nucléon}} \ \cdot \  \cancel{nucléon}",
            entraineQue: true,
            scale: 4.0,
          ),

          EspConstants.esp20,

          defautDeMasseAvecEnergieDeLiaisonParNucleon(
            eln: r"7,5",
            A: r"300 \  MeV",
            entraineQue: true,
            scale: 4.0,
          ),
        ],
      ),
    );
  }
}
