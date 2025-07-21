// pc/nuc/data_constants.dart

import 'package:scientiboost/core/widgets_builders/builders.dart';

class PhyNucValuesConstants {
  static const String masseCl35EnU = r"34,968852";
  static const String masseCl36EnU = r"35,968306";
  static const String masseCl37EnU = r"36,965903";

  static const String cEnMetreParSeconde = r"299792458";
  static const String uEnMeVC2 = r"931,5";
  static final uEnKg = buildTex2SvgInWidgetSpan(math: uEnKgMath);
  static const String masseProtonEnU = r"1,007276";
  static const String masseNeutronEnU = r"1,008665";
  static final nombreAvogadro = buildTex2SvgInWidgetSpan(
    math: nombreAvogadroMath,
  );
  static const String masseC14EnU = r"14,003242";
  static const String masseU235EnU = r"235,0439";
  static const String masseFe56EnU = r"55,934936";
  static const String masseU238EnU = r"238,0508";
  static const String massePu238EnU = r"238,050";
  static const String masseRa226EnU = r"226,0254";

  //MathConstants
  static const String uEnKgMath = r"1,66 . 10^{-27}";
  static const String nombreAvogadroMath = r"6,02 . 10^{23}";
}

class PhyNucDonneesTex2SvgMathConstants {
  static const String c =
      r"c = " + PhyNucValuesConstants.cEnMetreParSeconde + r" \ m/s";
  static const String nombreAvogadro =
      r"\mathcal{N}_A = " +
      PhyNucValuesConstants.nombreAvogadroMath +
      r" mol^{-1}";

  static const String uEnMeVC2 =
      r"1u = " + PhyNucValuesConstants.uEnMeVC2 + r" \ \text{MeV}/c^2";
  static const String uEnKg =
      r"1u = " + PhyNucValuesConstants.uEnKgMath + r" \ \text{kg}";
  static const String mp =
      r"m_p = " + PhyNucValuesConstants.masseProtonEnU + r" \ u";
  static const String mn =
      r"m_n = " + PhyNucValuesConstants.masseNeutronEnU + r" \ u";

  static const String masseC14EnU =
      r"m(_{\ 6}^{14}C) = " + PhyNucValuesConstants.masseC14EnU + r" \ u";

  static const String masseU235EnU =
      r"m(_{\ 92}^{235}U) = " + PhyNucValuesConstants.masseU235EnU + r" \ u";

  static const String masseFe56EnU =
      r"m(_{\ 26}^{56}Fe) = " + PhyNucValuesConstants.masseFe56EnU + r" \ u";

  static const String masseU238EnU =
      r"m(_{\ 92}^{238}U) = " + PhyNucValuesConstants.masseU238EnU + r" \ u";

  static const String massePu238EnU =
      r"m(_{\ 94}^{238}Pu) = " + PhyNucValuesConstants.massePu238EnU + r" \ u";

  static const String masseRa226EnU =
      r"m(_{\ 88}^{226}Ra) = " + PhyNucValuesConstants.masseRa226EnU + r" \ u";

  static const String masseCl35EnU =
      r"m(_{\ 17}^{35}Cl) = " + PhyNucValuesConstants.masseCl35EnU + r" \ u";
  static const String masseCl36EnU =
      r"m(_{\ 17}^{36}Cl) = " + PhyNucValuesConstants.masseCl36EnU + r" \ u";

  static const String masseCl37EnU =
      r"m(_{\ 17}^{37}Cl) = " + PhyNucValuesConstants.masseCl37EnU + r" \ u";
}

class PhyNucDonneesConstants {
  static final uEnKg = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.uEnKg,
  );

  static final nombreAvogadro = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.nombreAvogadro,
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

  static final masseU238EnU = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.masseU238EnU,
  );

  static final massePu238EnU = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.massePu238EnU,
  );

  static final masseRa226EnU = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.masseRa226EnU,
  );

  static final masseCl35EnU = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.masseCl35EnU,
  );
  static final masseCl36EnU = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.masseCl36EnU,
  );
  static final masseCl37EnU = buildTex2SvgInRichText(
    math: PhyNucDonneesTex2SvgMathConstants.masseCl37EnU,
  );
}
