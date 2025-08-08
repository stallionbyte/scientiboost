import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/reactions/reactions_builders.dart';

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
            wrapped: alpha(
              X1: r"U",
              A1: r"238",
              Z1: r"92",
              X2: r"Th",
              A2: r"234",
              Z2: r"90",
              scale: 2.0,
            ),
            color: Colors.black,
          ),
          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
