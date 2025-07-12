import 'package:scientiboost/core/helpers.dart';

class PhyNucTex2SvgMathContants {
  static const String delta = r"\Delta";
  static const String c2 = r"c^2";
  static const String eln = r"E_{l/nuc}";
  static const String elnBold = r"\mathbf{E_{l/nuc}}";
  static const String mn = r"m_n";
  static const String mp = r"m_p";
  static const String mevc2 = r"\text{MeV}/c^2";
  static const String mevc2Bold = r"\mathbf{\text{MeV}/c^2}";
  static const String notationNoyau = r"_{Z}^{A}X";
  static const String carbone12 = r"_{\ 6}^{12}C";
  static const String carbone12Bold = r"\mathbf{_{\ 6}^{12}C}";
  static const String carbone14 = r"_{\ 6}^{14}C";
  static const String carbone14Bold = r"\mathbf{_{\ 6}^{14}C}";
  static const String uranium235 = r"_{\ 92}^{235}U";
  static const String uranium235Bold = r"\mathbf{_{\ 92}^{235}U}";
  static const String fer56 = r"_{\ 26}^{56}Fe";
  static const String fer56Bold = r"\mathbf{_{\ 26}^{56}Fe}";
  static const String energieDeLiaisonParNucleon = r"""
E_{l/nuc} = \frac{
  \left[
    \begin{array}{l}
      Z \cdot m_p \\
      + (A - Z) \cdot m_n \\
      - m(_{Z}^{A}X)
    \end{array}
  \right] \cdot c^2
}{A}
""";
  static const String energieDeLiaisonParNucleonU235 = r"""
\begin{array}{l}
  E_{l/nuc} = \\
  \displaystyle \frac{ 
    \left[
      \begin{array}{l}
        92 \cdot 1.007276 \\
        + (235 - 92) \cdot 1.008665 \\
        - 235.0439
      \end{array}
    \right] \cdot 931.5 \text{MeV}
  }{235}
\end{array}
""";

  static const String energieDeLiaisonParNucleonFe56 = r"""
\begin{array}{l}
  E_{l/nuc} = \\
  \displaystyle \frac{ 
    \left[
      \begin{array}{l}
        26 \cdot 1.007276 \\
        + (56 - 26) \cdot 1.008665 \\
        - 55,934936
      \end{array}
    \right] \cdot 931.5 \text{MeV}
  }{56}
\end{array}
""";

  static const String defautDeMasse = r"""
\Delta m(_{Z}^{A}X) = \left[
  \begin{array}{l}
    Z \cdot m_p + \\
    (A - Z) \cdot m_n 
  \end{array}
  \right] 
  - m(_{Z}^{A}X)

""";
}

class PhyNucConstants {
  static final delta = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.delta,
    scale: 0.8,
  );

  static final c2 = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.c2,
  );

  static final eln = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.eln,
  );

  static final elnBold = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.elnBold,
  );

  static final mn = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.mn,
    scale: 0.7,
    offsetDy: 5,
  );

  static final mp = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.mp,
    scale: 0.7,
    offsetDy: 5,
  );

  static final mevc2 = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.mevc2,
  );

  static final mevc2Bold = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.mevc2Bold,
  );

  static final notationNoyau = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.notationNoyau,
  );

  static final carbone12 = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.carbone12,
  );

  static final carbone12Bold = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.carbone12Bold,
  );

  static final carbone14 = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.carbone14,
  );

  static final carbone14Bold = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.carbone14Bold,
  );

  static final uranium235 = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.uranium235,
  );

  static final uranium235Bold = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.uranium235Bold,
  );

  static final fer56 = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.fer56,
  );

  static final fer56Bold = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.fer56Bold,
  );
}
