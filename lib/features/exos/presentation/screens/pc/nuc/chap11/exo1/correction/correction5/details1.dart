import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/formules_constants.dart';

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
          SizedBox(height: 20),

          PhyNucLatexFormulesContants.defautDeMasse,

          SizedBox(height: 20),

          Text(
            "Or",
            style: const TextStyle(
              fontSize: ExoConstants.fontSize,
              fontWeight: FontWeight.bold,
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
                PhyNucLatexContants.notationNoyau,
                const TextSpan(text: ") = Z x "),
                PhyNucLatexContants.mp,
                const TextSpan(text: "\n \n + (A-Z) x "),
                PhyNucLatexContants.mn,
              ],
            ),
          ),

          SizedBox(height: 20),

          Text(
            "D'où",
            style: const TextStyle(
              fontSize: ExoConstants.fontSize,
              fontWeight: FontWeight.bold,
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
                PhyNucLatexContants.delta,
                const TextSpan(text: "m("),
                PhyNucLatexContants.notationNoyau,
                const TextSpan(text: ") = m(nucléons de "),
                PhyNucLatexContants.notationNoyau,
                const TextSpan(text: ")"),
                const TextSpan(text: "\n \n - m("),
                PhyNucLatexContants.notationNoyau,
                const TextSpan(text: ")"),
              ],
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
