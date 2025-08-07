import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap12/formules/formules_builders.dart';

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
          // Résolution détaillée pour trouver t
          sbTxt(
            txt:
                "Si 3/4 des noyaux ont disparu, il reste 1/4 des noyaux initiaux :",
          ),

          EspConstants.esp40,

          tex(math: r"N = \frac{N_0}{4}", scale: 3.0),

          EspConstants.esp40,

          sbTxt(txt: "D'après la loi de décroissance :"),

          EspConstants.esp40,

          loiDeDecroissance(scale: 1.5),

          EspConstants.esp40,

          tex(
            math: r"\Rightarrow \ \frac{N_0}{4} = N_0 \cdot e^{-\lambda t}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Diviser par N₀
          tex(math: r"\Rightarrow \ \frac{1}{4} = e^{-\lambda t}", scale: 3.0),
          EspConstants.esp40,

          // Prendre le logarithme
          tex(
            math:
                r"\Rightarrow \ \ln\left(\frac{1}{4}\right) = \ln(e^{-\lambda t})",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Simplifier
          tex(
            math: r"\Rightarrow \ \ln\left(\frac{1}{4}\right) = -\lambda t",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Utiliser la propriété du logarithme
          tex(math: r"\Rightarrow \ -\ln(4) = -\lambda t", scale: 3.0),
          EspConstants.esp40,

          // Résoudre pour t
          tex(math: r"\Rightarrow \ \ln(4) = \lambda t", scale: 3.0),
          EspConstants.esp40,

          tex(math: r"\Rightarrow \ t = \frac{\ln(4)}{\lambda}", scale: 3.0),
        ],
      ),
    );
  }
}
