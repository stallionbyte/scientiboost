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
          const SizedBox(height: 20),

          transition(
            transition:
                "L'énergie d'un noyau au repos correspond à l'énergie de masse",
          ),

          const SizedBox(height: 20),

          transition(transition: "Selon la relation d'Einstein:"),

          const SizedBox(height: 20),

          BordersWrapper(wrapped: relationEinstein()),

          const SizedBox(height: 20),

          transition(transition: "AN:"),

          const SizedBox(height: 20),

          relationEinstein(
            m: PhyNucValuesConstants.masseRa226EnU,
            uEnMeVC2: PhyNucValuesConstants.uEnMeVC2,
          ),

          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(left: "E", value: "210542,66", unit: "MeV"),
          ),

          const SizedBox(height: 20),

          transition(transition: "Comparaison avec l'énergie de liaison:"),

          const SizedBox(height: 20),

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

        const SizedBox(height: 20),

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

        const SizedBox(height: 20),

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

        const SizedBox(height: 20),

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

        const SizedBox(height: 20),

        transition(
          transition:
              "L'énergie de liaison représente 0,8% de l'énergie au repos du noyau.",
        ),
      ],
    );
  }
}
