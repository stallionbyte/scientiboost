import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details4 extends ConsumerStatefulWidget {
  const Details4({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details4State();
}

class _Details4State extends ConsumerState<Details4> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tex(math: r"1\ u = 1,66 \cdot 10^{-27} kg"),
          EspConstants.esp40,

          regleDe3(
            part1: r"1\ u",
            part2: r"1,66 \cdot 10^{-27}\ kg",
            part3: r"95,885 \ u",
            left: r"m(^{96}Sr)",
            wrap: true,
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
