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
        SizedBox(height: 20),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "notation du plutonium-238: "),

              PhyNucConstants.plutonium238,
            ],
          ),
        ),

        SizedBox(height: 20),
        PhyNucDonneesConstants.uEnMeVC2,
        SizedBox(height: 20),
        PhyNucDonneesConstants.mp,
        SizedBox(height: 20),
        PhyNucDonneesConstants.mn,
        SizedBox(height: 20),
        PhyNucDonneesConstants.massePu238EnU,
        SizedBox(height: 20),
        PhyNucDonneesConstants.nombreAvogadro,
      ],
    );
  }
}
