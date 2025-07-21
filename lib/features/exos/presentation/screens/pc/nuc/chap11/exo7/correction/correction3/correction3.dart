import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

class Correction3 extends ConsumerStatefulWidget {
  const Correction3({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction3State();
}

class _Correction3State extends ConsumerState<Correction3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),

          result(
            leftRich: buildResultLeft(Z: r"17", A: "35"),
            value: "8,27",
            unit: "MeV",
          ),

          const SizedBox(height: 20),

          result(
            leftRich: buildResultLeft(Z: r"17", A: "36"),
            value: "8,28",
            unit: "MeV",
          ),

          const SizedBox(height: 20),

          result(
            leftRich: buildResultLeft(Z: r"17", A: "37"),
            value: "8,33",
            unit: "MeV",
          ),

          const SizedBox(height: 20),

          transition(
            transition:
                "8,27 MeV < 8,28 MeV < 8,33 MeV, donc le chlore-35 est moins stable que le chlore-36 qui est moins stable que le chlore-37.",
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }

  WidgetSpan buildResultLeft({required String Z, required String A}) {
    return buildTex2SvgInWidgetSpan(
      math: r"E_{l/nuc} \ (_{" + Z + r"}^{" + A + r"}Cl)",
    );
  }
}
