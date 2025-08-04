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

        buildTex2SvgInRichText(math: r"m(_{\ 8}^{16}X) = 15,99\ u"),

        EspConstants.esp40,

        PhyNucData.uEnMeVC2,

        EspConstants.esp40,
      ],
    );
  }
}
