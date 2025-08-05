import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/formules/formules_builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';

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
          relationEinstein(scale: 1.5),

          EspConstants.esp40,

          tex(math: r"m = 15,99\ u"),

          EspConstants.esp40,

          PhyNucData.uEnMeVC2,

          EspConstants.esp40,

          TransitionConstants.dou,

          EspConstants.esp40,

          tex(
            math: r"m = 15,99 \cdot " + PhyNucData.valueUEnMeVC2 + r"\ MeV/c^2",
          ),

          EspConstants.esp40,

          tex(
            math:
                r"m = 15,99 \cdot " +
                PhyNucData.valueUEnMeVC2 +
                r"\ \frac{MeV}{c^2}",

            scale: 2.0,
          ),

          EspConstants.esp40,

          TransitionConstants.ainsi,

          EspConstants.esp40,

          tex(
            math:
                r"E = 15,99 \cdot" +
                PhyNucData.valueUEnMeVC2 +
                r"\ \frac{MeV}{c^2}" +
                r"\cdot c^2",
            scale: 2.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\Rightarrow \ E = 15,99 \cdot" +
                PhyNucData.valueUEnMeVC2 +
                r"\ \frac{MeV}{\cancel{c^2}}" +
                r"\cdot \cancel{c^2}",
            scale: 2.0,
          ),

          EspConstants.esp40,

          tex(math: r"E = 15,99 \cdot" + PhyNucData.valueUEnMeVC2 + r"\ MeV"),
        ],
      ),
    );
  }
}
