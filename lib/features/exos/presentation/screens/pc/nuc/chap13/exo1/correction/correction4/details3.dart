import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details3 extends ConsumerStatefulWidget {
  const Details3({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details3State();
}

class _Details3State extends ConsumerState<Details3> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tex(math: r"1\ MW = 10^6\ W"),

          EspConstants.esp40,

          regleDe3(
            part1: r"10^6\ W",
            part2: r"1\ MW",
            part3: r"3,009 \cdot 10^9\ W",
            left: r"P_{th}",
            wrap: true,
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
