import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

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
          EspConstants.esp20,

          transition(
            transition:
                "L'énergie d'un noyau au repos correspond à l'énergie de masse",
          ),

          EspConstants.esp20,

          transition(transition: "Selon la relation d'Einstein:"),

          EspConstants.esp20,

          BordersWrapper(wrapped: relationEinstein(), color: Colors.black),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          relationEinstein(
            m: PhyNucValuesConstants.masseRa226EnU,
            uEnMeVC2: PhyNucValuesConstants.uEnMeVC2,
          ),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(left: "E", value: "210542,66", unit: "MeV"),
          ),

          EspConstants.esp20,

          transition(transition: "Comparaison avec l'énergie de liaison:"),

          EspConstants.esp20,

          buildComparaisonAvecEnergieDeLiaison(),

          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget buildComparaisonAvecEnergieDeLiaison({double scale = 2.0}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              buildTex2SvgInWidgetSpan(math: r"\frac{E_l}{E}", scale: scale),
              const TextSpan(text: " = "),
              buildTex2SvgInWidgetSpan(
                math: r"\frac{1686,62}{210542,66}",
                scale: scale,
              ),
            ],
          ),
        ),

        EspConstants.esp20,

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              buildTex2SvgInWidgetSpan(math: r"\frac{E_l}{E}", scale: scale),
              const TextSpan(text: " = 0.008"),
            ],
          ),
        ),

        EspConstants.esp20,

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              buildTex2SvgInWidgetSpan(math: r"\frac{E_l}{E}", scale: scale),
              const TextSpan(text: " = 0,8%"),
            ],
          ),
        ),

        EspConstants.esp20,

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              buildTex2SvgInWidgetSpan(math: r"\mathbf{E_l}"),
              const TextSpan(
                text: " = 0,8% E",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        EspConstants.esp20,

        transition(
          transition:
              "L'énergie de liaison représente 0,8% de l'énergie au repos du noyau.",
        ),
      ],
    );
  }
}
