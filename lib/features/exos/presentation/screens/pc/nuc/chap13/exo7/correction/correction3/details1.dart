import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

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
          tex(math: r"1\ u = 931,5\ \text{MeV}/c^2", scale: 3.0),
          EspConstants.esp40,

          regleDe3(
            part1: r"931,5\ \text{MeV}/c^2",
            part2: r"1\ u",
            part3: r"833,1\ \text{MeV}/c^2",
            left: r"\Delta m",
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
