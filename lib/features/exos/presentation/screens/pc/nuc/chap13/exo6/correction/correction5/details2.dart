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
          tex(
            math:
                r"\begin{array}{l} E_{nucl} = 3,15 \times 10^{14}\ J \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Q = 173,3\ MeV \\ Q = 173,3 \times 1,602 \times 10^{-13}\ J \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} N_{réactions} =\\ \frac{3,15 \times 10^{14}}{173,3 \times 1,602 \times 10^{-13}} \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
