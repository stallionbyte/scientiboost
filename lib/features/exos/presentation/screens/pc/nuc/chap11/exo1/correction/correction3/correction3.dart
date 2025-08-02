import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'details1.dart';

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
          EspConstants.esp40,

          BordersWrapper(
            wrapped: buildTex2SvgInRichText(
              math:
                  r"\begin{array}{l} m(noyau) = \\ 99\% \cdot m(atome) \end{array}",
              scale: 2.5,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          sbTxt(
            txt: "La masse du noyau est sensiblement égale à celle de l'atome",
          ),
        ],
      ),
    );
  }
}
