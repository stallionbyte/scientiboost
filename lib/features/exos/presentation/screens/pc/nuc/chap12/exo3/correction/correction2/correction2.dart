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
          sbTxt(
            txt:
                "En cas d'ingestion ou d'inhalation les émetteurs alpha (comme le radon) sont très dangereux car ils endommagent directement les tissus (ADN, poumons). En cas de contamination interne il y'a un risque accru de cancer (poumon, os, foie).",
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
