import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/constants.dart';

class Correction3 extends ConsumerStatefulWidget {
  const Correction3({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction3State();
}

class _Correction3State extends ConsumerState<Correction3> {
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
                PhyNucLatexContants.eln,

                const TextSpan(text: "(fer-56)"),

                const TextSpan(text: " = 8,55 MeV/nucléon"),
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
                PhyNucLatexContants.eln,

                const TextSpan(text: "(uranium-235)"),

                const TextSpan(text: " = 7,39 MeV/nucléon"),
              ],
            ),
          ),

          SizedBox(height: 20),

          Text(
            "8,55 > 7,39 donc le fer-56 est plus stable que l'uranium-235",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: ExoConstants.fontSize,
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
