import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap12/formules/formules_builders.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';

class Correction4 extends ConsumerStatefulWidget {
  const Correction4({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction4State();
}

class _Correction4State extends ConsumerState<Correction4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          BordersWrapper(wrapped: activite(scale: 2.0, developpe: true)),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          activite(
            scale: 2.0,
            developpe: true,
            Ao: r"8,5 \cdot 10^7",
            T: r"3,8",
            t: r"15",
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"A",
              valueTex2SvgMath: r"5509886",
              unitTex2SvgMath: r"Bq",
            ),
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"A",
              valueTex2SvgMath: r"5,5 \cdot 10^6",
              unitTex2SvgMath: r"Bq",
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
                  text:
                      "Après 15 jours, les équipes ne pourront pas reprendre le travail sans équipement de protection respiratoire spécial, car l'activité ",
                ),

                buildTex2SvgInWidgetSpan(math: r"(\ 5,5 \cdot 10^6\ Bq \ )"),

                const TextSpan(text: " est toujours supérieure au seuil "),

                buildTex2SvgInWidgetSpan(math: r"(\ 10^5\ Bq \ )"),
              ],
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
