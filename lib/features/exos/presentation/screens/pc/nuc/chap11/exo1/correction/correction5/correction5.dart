import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants.dart';

import 'details1.dart';

class Correction5 extends ConsumerStatefulWidget {
  const Correction5({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction5State();
}

class _Correction5State extends ConsumerState<Correction5> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(text: "m(nucléons de "),
                PhyNucLatexContants.carbone14,
                const TextSpan(text: ")"),
                const TextSpan(text: " = 14,112976u"),
              ],
            ),
          ),

          SizedBox(height: 20),

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(text: "m("),
                PhyNucLatexContants.carbone14,
                const TextSpan(text: ") = 14,003242u"),
              ],
            ),
          ),

          SizedBox(height: 20),

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(text: "m(nucléons de "),
                PhyNucLatexContants.carbone14,
                const TextSpan(text: ") > m("),
                PhyNucLatexContants.carbone14,
                const TextSpan(text: ")"),
              ],
            ),
          ),

          SizedBox(height: 20),

          Text(
            "La différence correspond au défaut de masse transformé en énergie de liaison",
            style: const TextStyle(fontSize: ExoConstants.fontSize),
          ),

          SizedBox(height: 20),
          Details1(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
