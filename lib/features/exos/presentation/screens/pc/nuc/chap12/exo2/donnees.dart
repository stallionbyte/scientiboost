import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        TransitionConstants.donnees,
        EspConstants.esp20,

        sbTxt(txt: PhyNucDonneesConstants.periodeIode131EnJour),

        EspConstants.esp20,

        PhyNucDonneesConstants.nombreAvogadro,
      ],
    );
  }
}
