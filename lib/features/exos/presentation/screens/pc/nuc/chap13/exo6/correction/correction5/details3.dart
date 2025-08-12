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
          transition(
            transition: "Chaque réaction consomme 1 seul noyau d'uranium donc",
          ),
          EspConstants.esp40,

          tex(math: r"N_{noyaux} = N_{réactions}"),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} N_{noyaux} =\\ 1,13 \cdot 10^{25}\ noyaux \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
