// pc/nuc/constants.dart

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/builders.dart';

class PhyNucTex2SvgMathContants {
  static const String delta = r"\Delta";
  static const String deltaBold = r"\mathbf{\Delta}";

  static const String deltaM = r"\Delta m";
  static const String deltaMBold = r"\mathbf{\Delta m}";

  static const String c2 = r"c^2";
  static const String c2Bold = r"\mathbf{c^2}";

  static const String eln = r"E_{l/nuc}";
  static const String elnBold = r"\mathbf{E_{l/nuc}}";

  static const String el = r"E_l";
  static const String elBold = r"\mathbf{E_l}";

  static const String mn = r"m_n";
  static const String mnBold = r"\mathbf{m_n}";

  static const String mp = r"m_p";
  static const String mpBold = r"\mathbf{m_p}";

  static const String mevc2 = r"\text{MeV}/c^2";
  static const String mevc2Bold = r"\mathbf{\text{MeV}/c^2}";

  static const String notationAvogadro = r"\mathcal{N}_A";
  static const String notationAvogadroBold = r"\mathbf{\mathcal{N}_A}";
}

class PhyNucConstants {
  static final delta = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.delta,
    scale: 0.8,
  );

  static final deltaBold = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.deltaBold,
    scale: 0.8,
  );

  static final deltaM = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.deltaM,
    scale: 0.8,
  );

  static final deltaMBold = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.deltaMBold,
    scale: 0.8,
  );

  static final c2 = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.c2,
    offsetDy: -4,
  );

  static final c2Bold = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.c2Bold,
    offsetDy: -4,
  );

  static final eln = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.eln,
  );

  static final elnBold = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.elnBold,
  );

  static final el = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.el,
  );

  static final elBold = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.elBold,
  );

  static final mn = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.mn,
    scale: 0.7,
    offsetDy: 5,
  );

  static final mnBold = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.mnBold,
    scale: 0.7,
    offsetDy: 5,
  );

  static final mp = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.mp,
    scale: 0.7,
    offsetDy: 5,
  );

  static final mpBold = buildTex2SvgInWidgetSpan(
    math: PhyNucTex2SvgMathContants.mpBold,
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
    math: buildTex2SvgMathNotationNoyau(),
  );

  static final notationNoyauBold = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(bold: true),
  );

  static final carbone12 = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(X: r"C", A: r"12", Z: r"6"),
  );

  static final carbone12Bold = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(X: r"C", A: r"12", Z: r"6", bold: true),
  );

  static final carbone14 = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(X: r"C", A: r"14", Z: r"6"),
  );

  static final carbone14Bold = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(X: r"C", A: r"14", Z: r"6", bold: true),
  );

  static final cobalt60 = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(A: r"60", Z: r"27", X: r"Co"),
  );

  static final cobalt60Bold = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(
      A: r"60",
      Z: r"27",
      X: r"Co",
      bold: true,
    ),
  );

  static final uranium235 = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(A: r"235", Z: r"92", X: r"U"),
  );

  static final uranium235Bold = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(
      A: r"235",
      Z: r"92",
      X: r"U",
      bold: true,
    ),
  );

  static final fer56 = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(A: r"56", Z: r"26", X: r"F2"),
  );

  static final fer56Bold = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(
      A: r"56",
      Z: r"26",
      X: r"F2",
      bold: true,
    ),
  );

  static final elementX300 = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(X: r"X", A: r"300", Z: r"120"),
  );

  static final elementX300Bold = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(
      X: r"X",
      A: r"300",
      Z: r"120",
      bold: true,
    ),
  );

  static final uranium238 = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(A: r"238", Z: r"92", X: r"U"),
  );

  static final uranium238Bold = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(
      A: r"238",
      Z: r"92",
      X: r"U",
      bold: true,
    ),
  );

  static final plutonium238 = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(X: r"Pu", A: r"238", Z: r"94"),
  );

  static final plutonium238Bold = buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(
      X: r"Pu",
      A: r"238",
      Z: r"94",
      bold: true,
    ),
  );
}
