import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';

class Details1 extends ConsumerStatefulWidget {
  const Details1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details1State();
}

class _Details1State extends ConsumerState<Details1> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
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

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,
                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(text: "Un noyau de "),

                PhyNucConstants.carbone12,

                const TextSpan(text: " est composé de:"),
              ],
            ),
          ),

          SizedBox(height: 20),

          Text(
            "12 nucléons au total (A = 12)",
            style: const TextStyle(fontSize: ExoConstants.fontSize),
          ),

          Text(
            "6 protons (Z = 6)",
            style: const TextStyle(fontSize: ExoConstants.fontSize),
          ),

          Text(
            "6 neutrons (N = A - Z => N = 6)",
            style: const TextStyle(fontSize: ExoConstants.fontSize),
          ),
        ],
      ),
    );
  }
}
