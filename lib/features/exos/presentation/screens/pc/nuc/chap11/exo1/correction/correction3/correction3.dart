import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/helpers.dart';

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
                const TextSpan(text: "1u = 931,5 "),
                PhyNucConstants.mevc2,
              ],
            ),
          ),

          SizedBox(height: 20),

          Text(
            "Et",
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
                const TextSpan(text: "m( "),

                PhyNucConstants.carbone14,
                const TextSpan(text: " ) = 14,003242u"),
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
                const TextSpan(text: "m( "),
                PhyNucConstants.carbone14,
                const TextSpan(text: " ) = 14,003242 x 931,5"),
              ],
            ),
          ),

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              value: "13044,01992",
              leftRichs: <InlineSpan>[
                const TextSpan(
                  text: "m( ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                PhyNucConstants.carbone14Bold,
                const TextSpan(
                  text: " )",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
              unitRich: PhyNucConstants.mevc2Bold,
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
