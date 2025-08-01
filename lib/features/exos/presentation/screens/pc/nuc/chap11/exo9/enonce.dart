import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap11Exo9Enonce extends ConsumerWidget {
  const PcNucChap11Exo9Enonce({super.key});

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
            children: const <InlineSpan>[
              TextSpan(
                text:
                    "     Tu es membre d’une équipe de physiciens nucléaires qui analyse la stabilité des noyaux d’éléments présents dans l’atmosphère terrestre. Ton équipe s’intéresse à l’isotope oxygène-16, un noyau très abondant dans la nature.\n \n",
              ),

              TextSpan(
                text:
                    "1) Calculer l'énergie de liaison par nucléon de l'oxygène-16. \n \n",
              ),

              TextSpan(
                text:
                    "2) Quelle énergie faut-il pour extraire un proton de l'oxygène-16 ? \n \n",
              ),

              TextSpan(
                text:
                    "3) Quelle énergie faut-il pour extraire un neutron de l'oxygène-16 ?",
              ),
            ],
          ),
        ),

        Donnees(),
      ],
    );
  }
}
