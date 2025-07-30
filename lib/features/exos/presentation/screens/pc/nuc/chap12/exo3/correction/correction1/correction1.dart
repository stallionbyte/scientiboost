import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';

import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
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
          const SizedBox(height: 20),

          alpha(
            X1: r"U",
            Z1: r"\ 92",
            A1: r"238",

            A2: r"234",
            X2: r"Th",
            Z2: r"\ 90",

            scale: 2.0,
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
