import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Correction2 extends ConsumerStatefulWidget {
  const Correction2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction2State();
}

class _Correction2State extends ConsumerState<Correction2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          buildTex2SvgInRichText(
            math: r"E_{l/nuc}(_{\ 90}^{232}Th) = 7,41\ MeV",
            scale: 2.0,
          ),

          EspConstants.esp40,

          buildTex2SvgInRichText(
            math: r"E_{l/nuc}(_{\ 92}^{235}U) = 7,57\ MeV",
            scale: 2.0,
          ),

          EspConstants.esp40,

          sbTxt(
            txt:
                "7,57 > 7,41 donc le noyau d'uranium-235 et plus stable que le noyau de thorium-232",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
