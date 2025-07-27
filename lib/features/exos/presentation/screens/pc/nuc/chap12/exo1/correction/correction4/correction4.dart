import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

import 'details/details1.dart';

class Correction4 extends ConsumerStatefulWidget {
  const Correction4({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction4State();
}

class _Correction4State extends ConsumerState<Correction4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: tempsAvecLambdaAEtAo(scale: 2.0),
            color: Colors.black,
          ),

          EspConstants.esp20,

          Details1(),

          transition(transition: "AN"),

          EspConstants.esp20,

          tempsAvecLambdaAEtAo(
            lambda: r"1,209\ . \ 10^{-4}",
            A: r"0,136",
            Ao: r"0,226",
            scale: 4.0,
          ),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(left: "t", value: r"4200,82", unit: "ans"),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
