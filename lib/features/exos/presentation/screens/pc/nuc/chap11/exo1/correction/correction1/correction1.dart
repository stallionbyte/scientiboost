import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
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
          EspConstants.esp20,

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,
                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(text: "Un noyau de "),

                PhyNucConstants.carbone14,

                const TextSpan(text: " est composé de:"),
              ],
            ),
          ),

          EspConstants.esp20,

          sbTxt(txt: "14 nucléons au total (A = 14)"),

          sbTxt(txt: "6 protons (Z = 6)"),

          sbTxt(txt: "8 neutrons (N = A - Z => N = 8)"),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
