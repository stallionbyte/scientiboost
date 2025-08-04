import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/builders.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

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

                buildTex2SvgInWidgetSpan(math: r"\mathbf{_{\ 92}^{238}X}"),
              ],
            ),
          ),

          EspConstants.esp40,

          donnerCompositionNucleide(
            nucleide: buildTex2SvgInWidgetSpan(math: r"_{\ 92}^{238}X"),
            A: 238,
            Z: 92,
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

                buildTex2SvgInWidgetSpan(math: r"\mathbf{_{\ 8}^{18}X}"),
              ],
            ),
          ),

          EspConstants.esp40,

          donnerCompositionNucleide(
            nucleide: buildTex2SvgInWidgetSpan(math: r"_{\ 8}^{18}X"),
            A: 18,
            Z: 8,
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
