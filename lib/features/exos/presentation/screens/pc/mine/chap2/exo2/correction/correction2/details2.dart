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
          tex(math: r"\rho = 1,15\ g/mL"),
          EspConstants.esp40,

          tex(math: r"\Rightarrow \ \rho = 1,15\ \frac{g}{mL}", scale: 3.0),
          EspConstants.esp40,

          tex(
            math: r"\Rightarrow \ \rho = 1,15\ \frac{g}{10^{-3}\ L}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\Rightarrow \ \rho = 1,15\ \frac{1}{10^{-3}}\ \frac{g}{L}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(math: r"\Rightarrow \ \rho = 1,15 \cdot 10^3\ g/L"),
          EspConstants.esp40,

          tex(math: r"\Rightarrow \ \rho = 1150\ g/L"),

          EspConstants.esp80,

          tex(math: r"12 \% = 0,12"),
        ],
      ),
    );
  }
}
