import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
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

          betaMoins(
            X1: r"P",
            A1: r"32",
            Z1: r"15",
            X2: r"S",
            A2: r"32",
            Z2: r"16",
            scale: 2.0,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
