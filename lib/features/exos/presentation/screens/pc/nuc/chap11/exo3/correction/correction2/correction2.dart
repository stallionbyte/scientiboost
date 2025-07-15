import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules_builders.dart';
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
          SizedBox(height: 20),

          const Text(
            "Selon la relation d'Einstein :",
            style: TextStyle(fontSize: ExoConstants.fontSize),
          ),

          SizedBox(height: 20),

          relationEinstein(),

          SizedBox(height: 20),

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(text: "\n => m = "),
                PhyNucConstants.eSurC2,
              ],
            ),
          ),

          SizedBox(height: 20),

          BordersWrapper(wrapped: mEgaleESurC2(), color: Colors.black),

          SizedBox(height: 20),

          Text(
            "AN: ",
            style: const TextStyle(
              fontSize: ExoConstants.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          mEgaleESurC2(
            E: r"8,9325 \ . \ 10^{-9}",
            c: PhyNucValuesConstants.cEnMetreParSeconde,
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
