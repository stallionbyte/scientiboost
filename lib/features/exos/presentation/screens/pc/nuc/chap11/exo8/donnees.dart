import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';
import 'package:scientiboost/core/constants/constants.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransitionConstants.donnees,
        EspConstants.esp40,
        PhyNucData.masseProtonEnU,
        EspConstants.esp40,
        PhyNucData.masseNeutronEnU,
        EspConstants.esp40,
        PhyNucData.uEnMeVC2,
        EspConstants.esp40,
        buildTex2SvgInRichText(
          math:
              r"\begin{array}{l} m( _{\ 90}^{232}Th ) = 232,03805\ u \end{array}",
          scale: 2.5,
        ),
        EspConstants.esp40,
        buildTex2SvgInRichText(
          math:
              r"\begin{array}{l} \Delta m( _{\ 92}^{235}U ) = 1,911\ u \end{array}",
          scale: 1.5,
        ),
      ],
    );
  }
}
