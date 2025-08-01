import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

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
          donnerCompositionNucleide(
            nucleide: PhyNucConstants.carbone14,
            A: 14,
            Z: 6,
          ),

          EspConstants.esp20,

          transition(transition: "Et"),

          EspConstants.esp20,

          donnerCompositionNucleide(
            nucleide: PhyNucConstants.carbone12,
            A: 12,
            Z: 6,
          ),
        ],
      ),
    );
  }
}
