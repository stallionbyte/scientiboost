import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/details/details_builders/details_builders.dart';

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
          SizedBox(height: 20),

          transition(transition: "Selon la relation d'Einstein:"),

          SizedBox(height: 20),

          relationEinstein(scale: 1.4),

          SizedBox(height: 20),
          relationEinsteinInverse(scale: 1.2, entraineQue: true),
          SizedBox(height: 20),

          mEgaleESurC2(scale: 2.5, entraineQue: true),

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: mEgaleESurC2(scale: 2.5),
            color: Colors.black,
          ),

          SizedBox(height: 20),

          transition(transition: "AN"),

          SizedBox(height: 20),

          mEgaleESurC2(
            E: r"8,9325 \ . \ 10^{-9}",
            c: PhyNucValuesConstants.cEnMetreParSeconde,
            scale: 2.5,
          ),

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              valueRichs: _buildValueRich(),
              left: "m",
              unit: "kg",
            ),
          ),

          SizedBox(height: 40),
        ],
      ),
    );
  }

  List<InlineSpan> _buildValueRich() {
    return <InlineSpan>[
      const TextSpan(
        text: "9,938746 . ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      exp(exp: r"-26", bold: true),
    ];
  }
}
