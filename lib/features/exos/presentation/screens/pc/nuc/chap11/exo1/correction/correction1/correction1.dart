import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants.dart';

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
          SizedBox(height: 20),

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,
                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(text: "Un noyau de "),

                PhyNucLatexContants.carbone14,

                const TextSpan(text: " est composé de:"),
              ],
            ),
          ),

          SizedBox(height: 20),

          Text(
            "14 nucléons au total (A = 14)",
            style: const TextStyle(fontSize: ExoConstants.fontSize),
          ),

          Text(
            "6 protons (Z = 6)",
            style: const TextStyle(fontSize: ExoConstants.fontSize),
          ),

          Text(
            "8 neutrons (N = A - Z => N = 8)",
            style: const TextStyle(fontSize: ExoConstants.fontSize),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
