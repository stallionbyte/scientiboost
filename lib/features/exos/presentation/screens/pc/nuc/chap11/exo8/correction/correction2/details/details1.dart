import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/exo8/correction/correction2/details/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/details/details_builders/details_builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

class Details1 extends ConsumerStatefulWidget {
  const Details1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details1State();
}

class _Details1State extends ConsumerState<Details1> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          energieDeLiaisonParNucleon(scale: 6.0),
          EspConstants.esp40,
          energieDeLiaisonParNucleonInverse(scale: 6.0, entraineQue: true),
          EspConstants.esp40,
          demoMasseNoyauFromEnergieDeLiaisonParNucleon1(
            scale: 6.0,
            entraineQue: true,
          ),
          EspConstants.esp40,
          demoMasseNoyauFromEnergieDeLiaisonParNucleon2(
            scale: 6.0,
            entraineQue: true,
          ),
          EspConstants.esp40,
          demoMasseNoyauFromEnergieDeLiaisonParNucleon3(
            scale: 6.0,
            entraineQue: true,
          ),

          EspConstants.esp40,
          demoMasseNoyauFromEnergieDeLiaisonParNucleon4(
            scale: 6.0,
            entraineQue: true,
          ),
        ],
      ),
    );
  }
}
