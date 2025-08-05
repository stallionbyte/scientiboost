import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/formules/formules_builders.dart';

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
          energieDeLiaisonAvecDefautDeMase(scale: 1.5),

          EspConstants.esp40,

          tex(math: r"\Rightarrow \Delta m \cdot c^2 = E_l", scale: 2.0),

          EspConstants.esp40,

          tex(math: r"\Rightarrow \Delta m = \frac{E_l}{c^2}", scale: 3.0),
        ],
      ),
    );
  }
}
