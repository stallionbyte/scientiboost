import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Correction3 extends ConsumerStatefulWidget {
  const Correction3({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction3State();
}

class _Correction3State extends ConsumerState<Correction3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"E_{l/n}(\ fer-56\ )",
            right: r"8,55 MeV/nucléon",
          ),

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"E_{l/n}(\ uranium-235\ )",
            right: r"7,39 MeV/nucléon",
          ),

          EspConstants.esp20,

          sbTxt(
            txt:
                "8,55 > 7,39 donc un noyau de fer-56 est plus stable qu'un noyau d'uranium-235",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
