import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

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

          Text(
            "L'énergie nécessaire pour séparer complètement tous les nucléons d'un noyau correspond à l'énergie de liaison.",
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
                PhyNucConstants.el,

                const TextSpan(
                  text: " = ",
                  style: TextStyle(fontSize: ExoConstants.fontSize),
                ),

                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: TeX2SVG(
                    math: r"E_{l/nucléon}",

                    formulaWidgetBuilder: (context, svg) {
                      double displayFontSize = ExoConstants.displayFontSize;
                      return SvgPicture.string(
                        svg,
                        height: displayFontSize,
                        width: displayFontSize,
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      );
                    },
                  ),
                ),

                const TextSpan(
                  text: " . nombre de nucléons",
                  style: TextStyle(fontSize: ExoConstants.fontSize * 1.2),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: ExoConstants.richTextFontSize,

                  color: Colors.black,
                ),
                children: <InlineSpan>[
                  PhyNucConstants.el,

                  const TextSpan(
                    text: " = ",
                    style: TextStyle(fontSize: ExoConstants.fontSize),
                  ),

                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: TeX2SVG(
                      math: r"E_{l/nucléon}",

                      formulaWidgetBuilder: (context, svg) {
                        double displayFontSize = ExoConstants.displayFontSize;
                        return SvgPicture.string(
                          svg,
                          height: displayFontSize,
                          width: displayFontSize,
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        );
                      },
                    ),
                  ),

                  const TextSpan(
                    text: " . A",
                    style: TextStyle(fontSize: ExoConstants.fontSize * 1.5),
                  ),
                ],
              ),
            ),

            color: Colors.black,
          ),

          SizedBox(height: 20),

          transition(transition: "AN"),

          SizedBox(height: 20),

          result(leftRich: PhyNucConstants.el, value: "7,5 . 300", bold: false),

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              leftRich: PhyNucConstants.elBold,
              value: "2250",
              unit: "MeV",
            ),
          ),

          SizedBox(height: 40),
        ],
      ),
    );
  }
}
