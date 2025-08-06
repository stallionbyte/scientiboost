import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

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
          tex(math: r"T = 3,8\ jours"),
          EspConstants.esp40,
          tex(math: r"t = 15\ jours"),
          EspConstants.esp40,
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(
                  text:
                      "T et t sont en jours, donc pas besoin de les convertir car dans la formule on a le quotient: ",
                ),

                buildTex2SvgInWidgetSpan(math: r"\frac{t}{T}", scale: 2.0),

                const TextSpan(text: " , les unités (jours) se simplifient"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
