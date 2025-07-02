import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

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
          SizedBox(height: 20),

          Text(
            "m(nucléons) = masse(neutrons) + masse(protons)",
            style: const TextStyle(fontSize: ExoConstants.fontSize),
          ),

          SizedBox(height: 20),

          Text(
            "masse(protons) = nombre de protons x masse d'un proton",
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
                const TextSpan(text: "masse(protons) = Z x "),
                PhyNucLatexContants.mp,
              ],
            ),
          ),

          SizedBox(height: 20),

          Text(
            "masse(neutrons) = nombre de neutrons x masse d'un neutron",
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
                const TextSpan(text: "masse(neutrons) = (A-Z) x "),
                PhyNucLatexContants.mn,
              ],
            ),
          ),

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: Wrap(
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: ExoConstants.richTextFontSize,

                      color: Colors.black,
                    ),
                    children: <InlineSpan>[
                      const TextSpan(text: "masse(nucléons) = Z x "),
                      PhyNucLatexContants.mp,
                      const TextSpan(text: "\n \n + (A-Z) x "),
                      PhyNucLatexContants.mn,
                    ],
                  ),
                ),
              ],
            ),
            color_: Colors.black,
          ),

          SizedBox(height: 20),

          Text(
            "AN: ",
            style: const TextStyle(
              fontSize: ExoConstants.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Text(
            "masse(nucléons) = 6 x ${PhyNucLatexContants.masseProtonEnUValue} + (14 - 6) x ${PhyNucLatexContants.masseNeutronEnUValue}",
            style: const TextStyle(fontSize: ExoConstants.fontSize),
          ),

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: Wrap(
              children: [
                Text(
                  "masse(nucléons) = 14,112976u",
                  style: const TextStyle(
                    fontSize: ExoConstants.fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            color_: Colors.blue,
          ),

          SizedBox(height: 20),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
