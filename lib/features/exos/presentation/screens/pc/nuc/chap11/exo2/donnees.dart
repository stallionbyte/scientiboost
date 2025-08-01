import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        TransitionConstants.donnees,

        EspConstants.esp20,

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "Notation de l'uranium-235: "),
              PhyNucConstants.uranium235,
            ],
          ),
        ),

        EspConstants.esp20,

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "Notation du fer-56: "),
              PhyNucConstants.fer56,
            ],
          ),
        ),

        EspConstants.esp20,
        PhyNucDonneesConstants.uEnMeVC2,
        EspConstants.esp20,

        PhyNucDonneesConstants.masseU235EnU,

        EspConstants.esp20,
        PhyNucDonneesConstants.masseFe56EnU,
        EspConstants.esp20,

        PhyNucDonneesConstants.mp,

        EspConstants.esp20,

        PhyNucDonneesConstants.mn,
      ],
    );
  }
}
