import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'donnees.dart';

class PcNucChap11Exo10Enonce extends ConsumerWidget {
  const PcNucChap11Exo10Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.fontSize * 1.2,
              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "les réactions nucléaires qui se produisent dans le soleil libèrent une énergie voisine de 3,46 . ",
              ),

              buildTex2SvgInWidgetSpan(math: r"10^{31}"),

              const TextSpan(text: " J par jour. \n \n"),

              const TextSpan(
                text:
                    "1) Calculer la diminution de masse du soleil en une journée puis en une année.  \n \n",
              ),

              const TextSpan(
                text:
                    "2) Calculer la durée de vie du soleil si toute sa masse devait être convertie en énergie sachant que sa masse est d'environ 2 . ",
              ),

              buildTex2SvgInWidgetSpan(math: r"10^{30}"),

              const TextSpan(text: " kg \n \n"),

              const TextSpan(
                text:
                    "3) Comparer cette durée de vie avec la durée de vie réelle du soleil qui est d'environ 10 milliards d'années. Conclure \n \n",
              ),
            ],
          ),
        ),

        Donnees(),
      ],
    );
  }
}
