import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/details/details_builders/details_builders.dart';

import 'details/details1.dart';

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

          BordersWrapper(
            wrapped: tempsAvecTAetAo7(scale: 2.0),
            color: Colors.black,
          ),

          EspConstants.esp20,

          Details1(),

          EspConstants.esp20,

          tempsAvecTAetAo7(T: r"432", A: r"30", Ao: r"37", scale: 2.0),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(left: r"t", value: r"130,7", unit: r"ans"),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
