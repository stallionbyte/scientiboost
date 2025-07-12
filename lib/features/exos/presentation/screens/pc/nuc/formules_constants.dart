import 'package:flutter/material.dart';

import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/constants.dart';
import 'package:scientiboost/core/helpers.dart';

class PhyNucFormulesConstants {
  static const scale = 6.0;

  static final Widget defautDeMasse = buildTex2SvgInRichText(
    math: PhyNucTex2SvgMathContants.defautDeMasse,
    scale: 4.0,
  );

  static final Widget energieDeLiaisonParNucleon = buildTex2SvgInRichText(
    math: PhyNucTex2SvgMathContants.energieDeLiaisonParNucleon,
    scale: scale,
  );

  static Widget energieDeLiaisonParNucleonU235 = buildTex2SvgInRichText(
    math: PhyNucTex2SvgMathContants.energieDeLiaisonParNucleonU235,
    scale: scale,
  );

  static Widget energieDeLiaisonParNucleonFe56 = buildTex2SvgInRichText(
    math: PhyNucTex2SvgMathContants.energieDeLiaisonParNucleonFe56,
    scale: scale,
  );
}
