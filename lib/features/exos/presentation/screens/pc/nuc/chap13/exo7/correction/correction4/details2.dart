import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tex(math: r"4,8 \cdot 10^{-6} \ g = 4,8 \cdot 10^{-9} kg"),
          EspConstants.esp40,

          regleDe3(
            part1: r"4,8 \cdot 10^{-9} kg",
            part2: r"1\ noyau",
            part3: r"1,59 \cdot 10^{-25}\ kg",
            left: r"N",
            wrap: true,
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
