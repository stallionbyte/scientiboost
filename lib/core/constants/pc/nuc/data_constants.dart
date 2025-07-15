// data_constants.dart

import 'package:scientiboost/core/widgets_builders/builders.dart';

class PhyNucValuesConstants {
  // Utiliser la notation r".." partout
  static const String cEnMetreParSeconde = r"299792458";
  static const String masseU235EnU = r"235,0439";
  static const String masseFe56EnU = r"55,934936";
  static const String uEnMeVC2 = r"931,5";
  static final uEnKg = buildTex2SvgInWidgetSpan(math: uEnKgMath);
  static const String masseProtonEnU = r"1,007276";
  static const String masseNeutronEnU = r"1,008665";

  //MathConstants
  static const String uEnKgMath = r"1,66 . 10^{-27}";
}

class PhyNucDonneesTex2SvgMathConstants {
  static const String c = r"c = 299792458 \ m/s";
  static const String uEnMeVC2 = r"1u = 931,5 \ \text{MeV}/c^2";
  static const String uEnKg = r"1u = 1,66 . 10^{-27} \ \text{kg}";
  static const String mp = r"m_p = 1,007276 \ u";
  static const String mn = r"m_n = 1,008665 \ u";
  static const String masseC14EnU = r"m(_{\ 6}^{14}C) = 14,003242 \ u";
  static const String masseU235EnU = r"m(_{\ 92}^{235}U) = 235,0439 \ u";
  static const String masseFe56EnU = r"m(_{\ 26}^{96}Fe) = 55,934936 \ u";
}

class PhyNucDonneesConstants {
  static final uEnKg = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.uEnKg,
  );

  static final c = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.c,
  );

  static final uEnMeVC2 = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.uEnMeVC2,
  );

  static final mp = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.mp,
    scale: 0.8,
  );

  static final mn = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.mn,
    scale: 0.8,
  );

  static final masseC14EnU = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.masseC14EnU,
  );

  static final masseU235EnU = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.masseU235EnU,
  );

  static final masseFe56EnU = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.masseFe56EnU,
  );
}
