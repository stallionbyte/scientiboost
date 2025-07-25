import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

class Correction2 extends ConsumerStatefulWidget {
  const Correction2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction2State();
}

class _Correction2State extends ConsumerState<Correction2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),

          regleDe3(
            part1: r"1,4 . 10^{17}\ kg",
            part2: r"1\ an",
            part3: r"2.10^{30}\ kg\ \ ",
            left: r"duree",
            border: true,
            scale: 8.0,
          ),

          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              left: "duree",
              valueTex2SvgMath: "1,42 . 10^{13}",
              unit: "ans",
            ),
          ),

          const SizedBox(height: 20),

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(
                  text:
                      "Si toute la masse du soleil devait être convertie en énergie, la durée de vie du soleil serait ",
                ),

                buildTex2SvgInWidgetSpan(math: r"1,42 . 10^{13}\ ans"),

                const TextSpan(text: " soit environ 14 200 milliards d'années"),
              ],
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
