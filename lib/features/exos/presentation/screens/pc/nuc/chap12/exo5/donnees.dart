import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/builders.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransitionConstants.donnees,
        EspConstants.esp20,

        notationSymbolique(
          X: r"Y",
          Z: r"39",
          A: r"90",
          nomNoyau: r"de l'yttrium-90",
        ),

        EspConstants.esp20,

        result(
          bold: false,
          left: r"1 GBq",
          valueTex2SvgMath: r"10^9",
          unit: r"Bq",
        ),

        EspConstants.esp20,

        sbTxt(txt: PhyNucDonneesConstants.periodeYttrium90EnHeures),
      ],
    );
  }
}
