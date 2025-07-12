import 'package:scientiboost/core/helpers.dart';

class PhyNucValuesConstants {
  static const String masseU235EnU = "235,0439";
  static const String masseFe56EnU = "55,934936";
  static const String uEnMeVC2 = "931,5";
  static const String masseProtonEnU = "1,007276";
  static const String masseNeutronEnU = "1,008665";
}

class PhyNucDonneesTex2SvgMathConstants {
  static const String uEnMeVC2 = r"1u = 931,5 \text{MeV}/c^2";
  static const String mp = r"m_p = 1,007276u";
  static const String mn = r"m_n = 1,008665u";
  static const String masseC14EnU = r"m(_{\ 6}^{14}C) = 14,003242u";
  static const String masseU235EnU = r"m(_{\ 92}^{235}U) = 235,0439u";
  static const String masseFe56EnU = r"m(_{\ 26}^{96}Fe) = 55,934936u";
}

class PhyNucDonneesConstants {
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
