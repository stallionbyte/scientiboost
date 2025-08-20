import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

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
        EspConstants.esp40,
        tex(math: r"V_m = 22,4\ L/mol"),
        EspConstants.esp40,
        tex(math: r"M(HCl) = 36,5\ g/mol"),
        EspConstants.esp40,
        tex(math: r"M(H_2SO_4) = 98,0\ g/mol"),
        EspConstants.esp40,
        tex(math: r"M(H_2O) = 18,0\ g/mol"),
        EspConstants.esp40,
        tex(math: r"\rho(H_2O) = 1000\ g/L"),

        EspConstants.esp40,
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "Acide sulfurique "),

              buildTex2SvgInWidgetSpan(math: r"(H_2SO_4)"),

              const TextSpan(text: " : considéré comme un diacide fort"),
            ],
          ),
        ),

        EspConstants.esp40,
        sbTxt(txt: "Chlorure d'hydrogène (HCl) : monoacide fort"),
        tex(
          math: r"C_{S0} = \frac{d \times \% \times 1000}{M_{HCl}}",
          scale: 3.0,
        ),
      ],
    );
  }
}
