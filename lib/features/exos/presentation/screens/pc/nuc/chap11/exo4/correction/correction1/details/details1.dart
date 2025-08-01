import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/details/details_builders/details_builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'builders.dart';

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
          energieDeLiaisonAvecDefautDeMase(scale: 1.0),

          EspConstants.esp20,

          energieDeLiaisonInverse(entraineQue: true, scale: 1.0),

          EspConstants.esp20,

          energieDeLiaisonInverse2(entraineQue: true, scale: 2.0),

          EspConstants.esp20,

          TransitionConstants.or,

          EspConstants.esp20,

          energieDeLiaisonParNucleonAvecEnergieDeLiaison(scale: 2.0),

          EspConstants.esp20,

          energieDeLiaisonParNucleonAvecEnergieDeLiaisonInverse(
            entraineQue: true,
            scale: 2.0,
          ),

          EspConstants.esp20,

          energieDeLiaisonAvecEnergieDeLiaisonParNucleon(
            entraineQue: true,
            scale: 1.0,
          ),

          EspConstants.esp20,

          TransitionConstants.dou,

          EspConstants.esp20,

          defautDeMasseAvecEnergieDeLiaisonParNucleon(scale: 4.0),
        ],
      ),
    );
  }
}
