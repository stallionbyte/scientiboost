import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/formules/formules_builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';

class Correction1 extends ConsumerStatefulWidget {
  const Correction1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction1State();
}

class _Correction1State extends ConsumerState<Correction1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(
                  text: "Pour ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                buildTex2SvgInWidgetSpan(math: r"\mathbf{_{\ 90}^{232}Th}"),
              ],
            ),
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: energieDeLiaisonParNucleon(scale: 7.0),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          energieDeLiaisonParNucleon(
            wrap: true,
            scale: 7.0,
            X: r"Th",
            Z: r"\ 90",
            A: r"232",
            mp: PhyNucData.valueMasseProtonEnU,
            mn: PhyNucData.valueMasseNeutronEnU,
            masseNoyau: r"232,03805",
            uEnMeVC2: PhyNucData.valueUEnMeVC2,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{l/nuc}",
              valueTex2SvgMath: r"7,41",
              unitTex2SvgMath: r"MeV",
            ),
          ),

          EspConstants.esp40,

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(
                  text: "Pour ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                buildTex2SvgInWidgetSpan(math: r"\mathbf{_{\ 92}^{235}U}"),
              ],
            ),
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: buildTex2SvgInRichText(
              math:
                  r"\begin{array}{l} E_{l/nuc} = \frac{\Delta m \cdot c^2}{A} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} E_{l/nuc} = \frac{1,911 \cdot" +
                PhyNucData.valueUEnMeVC2 +
                r"}{235} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{l/nuc}",
              valueTex2SvgMath: r"7,57",
              unitTex2SvgMath: r"MeV",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
