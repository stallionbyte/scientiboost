import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/reactions/reactions_builders.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'details1.dart';

class Correction1 extends ConsumerStatefulWidget {
  const Correction1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction1State();
}

class _Correction1State extends ConsumerState<Correction1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          BordersWrapper(
            wrapped: betaPlus(
              X1: r"C",
              A1: r"11",
              Z1: r"\ \ 6",
              X2: r"B",
              Z2: r"\ \ 5",
              A2: r"11",
              scale: 2.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          sbTxt(
            txt:
                "Dans le noyau père, tout ce passe comme si un proton se transforme en un neutron et un positon. Ensuite le positon est expulsé du noyau.",
          ),
          EspConstants.esp40,

          reaction12(
            X1: r"p",
            Z1: r"1",
            A1: r"1",
            X2: r"n",
            Z2: r"0",
            A2: r"1",
            X3: r"e",
            Z3: r"1",
            A3: r"0",
            scale: 2.0,
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
