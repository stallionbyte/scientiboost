import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

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
          EspConstants.esp20,

          defautDeMasse(scale: 6.0),

          EspConstants.esp20,

          TransitionConstants.or,

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"m(\ nucléons\ de\ _{Z}^{A}X\ )",
            rightTex2SvgMath: r"Z \cdot m_p\ +\ (A-Z) \cdot m_n",
          ),

          EspConstants.esp20,

          TransitionConstants.dou,

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"\Delta m(\ _{Z}^{A}X \ )",
            rightTex2SvgMath:
                r"m(\ nucléons de _{Z}^{A}X \ )\ -\ m(\ _{Z}^{A}X \ )",
          ),

          EspConstants.esp20,

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(text: "Ainsi le défaut de masse "),

                buildTex2SvgInWidgetSpan(math: r"\Delta m(\ _{Z}^{A}X \ )"),

                const TextSpan(text: " correspond à la différence entre "),

                buildTex2SvgInWidgetSpan(
                  math: r"m(\ nucléons\ de\ _{Z}^{A}X \ )",
                ),

                const TextSpan(text: " et "),

                buildTex2SvgInWidgetSpan(math: r"m(\ _{Z}^{A}X \ )"),
              ],
            ),
          ),

          EspConstants.esp20,
        ],
      ),
    );
  }
}
