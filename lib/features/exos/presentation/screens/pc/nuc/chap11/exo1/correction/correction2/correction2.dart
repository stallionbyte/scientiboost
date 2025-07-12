import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/constants.dart';
import 'details1.dart';

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

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(text: "le carbone-14 ("),

                PhyNucLatexContants.carbone14,

                const TextSpan(text: ") est un isotope du carbone-12 ("),

                PhyNucLatexContants.carbone12,

                const TextSpan(
                  text:
                      ") car ils ont le même nombre de protons (Z=6) mais des nombres de neutrons différents",
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
          Details1(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
