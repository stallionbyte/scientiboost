import 'package:flutter/material.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

import 'tex2svg_math.dart';

Widget calculDetails() {
  return Column(
    children: [
      energieReaction12(
        X1: r"U",
        Z1: r"92",
        A1: r"238",
        X2: r"Th",
        Z2: r"90",
        A2: r"234",
        X3: r"He",
        Z3: r"2",
        A3: r"4",
        scale: 4.0,
      ),
      EspConstants.esp40,

      buildTex2SvgInRichText(
        math: tex2SvgMathcalculDetailsEtape1(),
        scale: 2.0,
      ),
      EspConstants.esp40,

      buildTex2SvgInRichText(
        math: tex2SvgMathcalculDetailsEtape3(),
        scale: 2.0,
      ),
      EspConstants.esp40,

      buildTex2SvgInRichText(
        math: tex2SvgMathcalculDetailsEtape4(),
        scale: 2.0,
      ),
      EspConstants.esp40,

      buildTex2SvgInRichText(
        math: tex2SvgMathcalculDetailsEtape6(),
        scale: 2.0,
      ),
      EspConstants.esp40,

      buildTex2SvgInRichText(
        math: tex2SvgMathcalculDetailsEtape7(),
        scale: 2.0,
      ),
      EspConstants.esp40,

      buildTex2SvgInRichText(
        math: tex2SvgMathcalculDetailsEtape8(),
        scale: 2.0,
      ),
      EspConstants.esp40,

      buildTex2SvgInRichText(
        math: tex2SvgMathcalculDetailsEtape9(),
        scale: 2.0,
      ),
      EspConstants.esp40,

      buildTex2SvgInRichText(
        math: tex2SvgMathcalculDetailsEtape10(),
        scale: 1.0,
      ),
      EspConstants.esp40,

      buildTex2SvgInRichText(
        math: tex2SvgMathcalculDetailsEtape11(),
        scale: 2.0,
      ),
      EspConstants.esp40,
    ],
  );
}
