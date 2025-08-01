import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';

import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/details/details_builders/details_builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

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
          const SizedBox(height: 20),

          transition(transition: "Selon la relation d'Einstein:"),

          const SizedBox(height: 20),

          relationEinstein(),

          const SizedBox(height: 20),

          relationEinsteinInverse(entraineQue: true),

          const SizedBox(height: 20),

          mEgaleESurC2(entraineQue: true, scale: 2.0),

          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: mEgaleESurC2(scale: 2.0),
            color: Colors.black,
          ),

          const SizedBox(height: 20),

          TransitionConstants.an,

          const SizedBox(height: 20),

          mEgaleESurC2(
            E: r"3,46 . 10^{31}",
            c: PhyNucValuesConstants.cEnMetreParSeconde,
            scale: 2.0,
          ),

          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              left: "m(1 jour)",
              valueTex2SvgMath: r"3,84 . 10^{14}",
              unit: "kg",
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
                const TextSpan(
                  text:
                      "la dimunition de masse du soleil en 1 jour est d'environ:",
                ),

                buildTex2SvgInWidgetSpan(math: r"3,84 . 10^{14} \text{kg}"),
              ],
            ),
          ),

          const SizedBox(height: 20),

          transition(
            transition: "Calculons la diminution de masse du soleil en 1 an:",
          ),

          const SizedBox(height: 20),

          regleDe3(
            part1: r"1\ jour \ \",
            part2: r"3,84 . 10^{14} \text{kg}",
            part3: r"365\ jours",
            left: r"m(1\ an)",
            border: true,
            scale: 6.0,
          ),

          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              left: "m(1 an)",
              valueTex2SvgMath: "1,4 . 10^{17}",
              unit: "kg",
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
