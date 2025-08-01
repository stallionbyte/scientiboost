import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/reactions/reactions_builders.dart';

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
          EspConstants.esp20,
          betaPlus(
            scale: 2.0,
            X1: r"F",
            Z1: r"\ \ 9",
            A1: r"18",
            X2: r"O",
            Z2: r"\ \ 8",
            A2: r"16",
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
