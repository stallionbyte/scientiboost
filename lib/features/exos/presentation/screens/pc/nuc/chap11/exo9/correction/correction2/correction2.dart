import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Correction2 extends ConsumerStatefulWidget {
  const Correction2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction2State();
}

class _Correction2State extends ConsumerState<Correction2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,
          tex(math: r"E_{l/nuc}(fer-56) = 8,72\ MeV"),
          EspConstants.esp40,
          tex(math: r"E_{l/nuc}(carbone-12) = 7,67\ MeV"),
          EspConstants.esp40,
          tex(math: r"E_{l/nuc}(uranium-238) = 7,57\ MeV"),
          EspConstants.esp40,
          sbTxt(
            txt:
                "8,72 > 7,67 > 7,57 donc le fer-56 est plus stable que le carbone-12 qui est plus stable que l'uranium-238",
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
