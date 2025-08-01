import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

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
          EspConstants.esp20,

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(
                  text: "Durée de vie estimée du soleil: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const TextSpan(text: "environ 10 milliards d'années \n \n"),

                const TextSpan(
                  text:
                      "Durée de vie du soleil si toute sa masse est convertie en énergie: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const TextSpan(text: "environ 14 200 milliards d'années \n \n"),

                const TextSpan(
                  text: "Conclusion: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const TextSpan(
                  text:
                      "Cette différence est due au fait que le soleil arrivera en fin de vie bien avant que toute sa masse ne soit convertie en énergie",
                ),
              ],
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
