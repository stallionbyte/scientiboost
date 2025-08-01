import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';
import 'details/details1.dart';
import 'package:scientiboost/core/constants/constants.dart';

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
          EspConstants.esp20,
          transition(
            transition: "Energie de liaison d'un noyau de plutonium-238",
          ),
          EspConstants.esp20,

          energieDeLiaisonAvecDefautDeMase(scale: 1.5),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"E_l",
            right: r"1,88 . " + PhyNucValuesConstants.uEnMeVC2 + r" MeV",
          ),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              leftRich: PhyNucConstants.el,
              value: "1751,22",
              unit: "MeV",
              bold: false,
            ),
            color: Colors.black,
          ),

          EspConstants.esp20,

          transition(transition: "Nombre de noyaux de plutonium-238 dans 1 kg"),

          EspConstants.esp20,

          nombreDeNoyauAvecMasse(scale: 2.0),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          nombreDeNoyauAvecMasse(
            m: r"1000",
            avogadro: PhyNucValuesConstants.nombreAvogadroMath,
            M: r"238",
            scale: 2.0,
          ),

          EspConstants.esp20,

          Details1(),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              left: "N",
              valueTex2SvgMath: r"2,5294 \cdot 10^{24}",
              unit: "noyaux",
              bold: false,
            ),
            color: Colors.black,
          ),

          EspConstants.esp20,

          transition(
            transition: "Energie de liaison totale dans 1 kg de plutonium-238",
          ),

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"E_{l/totale}",
            rightTex2SvgMath: r"nombre\ de\ noyaux \cdot E_l\ d'un\ noyau",
          ),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"E_{l/totale}",
            rightTex2SvgMath: r"2,5294 \cdot 10^{24} \cdot 1751,22",
          ),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{l/totale}",
              valueTex2SvgMath: r"4,4295 \cdot 10^{27}",
              unit: "MeV",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
