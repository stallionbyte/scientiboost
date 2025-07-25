import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';

String buildTex2SvgMathDefautDeMasseInverse({
  String X = r" X ",
  String A = r" A ",
  String Z = r" Z ",
  String mp = r" m_p ",
  String mn = r" m_n ",
  String? defautDeMasse,
  String? masseNoyau,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r"\mathbf{ ");
  }

  if (entraineQue) {
    math.write(r"\Rightarrow ");
  }

  math.write(r" \left[ \begin{array}{l} ");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r" + \\ (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") \cdot ");
  math.write(mn);
  math.write(r" \end{array} \right] - ");

  if (masseNoyau != null) {
    math.write(masseNoyau);
  } else {
    math.write(r" m(_{");
    math.write(Z);
    math.write(r"}^{");
    math.write(A);
    math.write(r"} ");
    math.write(X);
    math.write(r") = \\");
  }

  if (defautDeMasse != null) {
    math.write(defautDeMasse);
  } else {
    math.write(r"\Delta m(_{");
    math.write(Z);
    math.write(r"}^{");
    math.write(A);
    math.write(r"} ");
    math.write(X);
    math.write(r")");
  }

  if (bold) {
    math.write(r"}");
  }

  return math.toString();
}

String buildTex2SvgMathESurC2({
  String E = r" E ",
  String c = r" c ",
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r"\Rightarrow ");
  }

  math.write(r" \frac{ ");

  math.write(E);

  math.write(r" }{ ");

  math.write(c);

  math.write(r" ^2} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathmEgaleESurC2({
  String m = r"m",
  String E = r" E ",
  String c = r" c ",
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r"\Rightarrow ");
  }

  math.write(m);

  math.write(r" = \frac{ ");

  math.write(E);

  math.write(r" }{ ");

  math.write(c);

  math.write(r" ^2} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathEnergieDeLiaisonInverse({
  String c = r" c ",
  String? defautDeMasse,
  String? energieDeLiaison,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r" \Rightarrow ");
  }

  if (defautDeMasse != null) {
    math.write(defautDeMasse);
  } else {
    math.write(r" \Delta m");
  }

  math.write(r" \cdot {");

  math.write(c);

  math.write(r" } ^ 2 ");

  math.write(r" = ");

  if (energieDeLiaison != null) {
    math.write(energieDeLiaison);
  } else {
    math.write(r"E_l");
  }

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathEnergieDeLiaisonParNucleonInverse({
  String eln = r"E_{l/nuc}",
  String A = r"A",
  String Z = r"Z",
  String X = r"X",
  String mp = r"m_p",
  String mn = r"m_n",
  String? masseNoyau,
  String? uEnMeVC2,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r" \Rightarrow ");
  }

  math.write(r" \begin{array}{l} ");

  math.write(r" \displaystyle \frac{ \left[ \begin{array}{l} ");

  math.write(Z);

  math.write(r" \cdot ");

  math.write(mp);

  math.write(r" \\ + ( ");

  math.write(A);

  math.write(r" - ");

  math.write(Z);

  math.write(r" ) \cdot ");

  math.write(mn);

  math.write(r" \\  - ");

  if (masseNoyau != null) {
    math.write(masseNoyau);
  } else {
    math.write(r" m(_{ ");

    math.write(Z);

    math.write(r" }^{ ");

    math.write(A);

    math.write(r" } ");

    math.write(X);

    math.write(r" ) ");
  }

  math.write(r" \end{array} \right] \cdot ");

  if (uEnMeVC2 != null) {
    math.write(uEnMeVC2);
  } else {
    math.write(r"c^2");
  }

  math.write(r" }{ ");

  math.write(A);

  math.write(r" } = ");

  math.write(eln);

  math.write(r"\end{array} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathRelationEinsteinInverse({
  String E = r" E ",
  String m = r" m ",
  String c = r" c ",
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r" \Rightarrow ");
  }

  math.write(m);

  math.write(r" \cdot {");

  math.write(c);

  math.write(r" } ^ 2 = ");

  math.write(E);

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

// Details calcul energie de liaison par nucléon en MeV

String buildTex2SvgMathCalculEnergieDeLiaison1({
  String el = r"E_l",
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r" \Rightarrow ");
  }

  math.write(r" \begin{array}{l} ");

  math.write(el);
  math.write(r" = \\");
  math.write(r" \left[ \begin{array}{l} ");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r" \text{u} \\ + (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") ");
  math.write(mn);
  math.write(r" \text{u} \\ - ");

  math.write(masseNoyau);
  math.write(r" \text{u} ");

  math.write(r" \end{array} \right] \cdot c^2 ");
  math.write(r" \end{array} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathCalculEnergieDeLiaison2({
  String el = r"E_l",
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r" \Rightarrow ");
  }

  math.write(r" \begin{array}{l} ");

  math.write(el);
  math.write(r" = \\");
  math.write(r" \left[ \begin{array}{l} ");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r" \\ + (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") ");
  math.write(mn);
  math.write(r" \\ - ");

  math.write(masseNoyau);

  math.write(r" \end{array} \right] \text{u} \cdot c^2 ");
  math.write(r" \end{array} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathCalculEnergieDeLiaison3({
  String el = r"E_l",
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String uMeVC2 = PhyNucValuesConstants.uEnMeVC2,
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r" \Rightarrow ");
  }

  math.write(r" \begin{array}{l} ");

  math.write(el);
  math.write(r" = \\");
  math.write(r" \left[ \begin{array}{l} ");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r" \\ + (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") ");
  math.write(mn);
  math.write(r" \\ - ");

  math.write(masseNoyau);

  math.write(r" \end{array} \right]");
  math.write(uMeVC2);
  math.write(r" MeV ");
  math.write(r" \end{array} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

// Details calcul energie de liaison par nucléon en MeV

String buildTex2SvgMathCalculEnergieDeLiaisonParNucleon2({
  String eln = r"E_{l/n}",
  String Z = r"Z",
  String A = r"A",
  String mp = r"m_p",
  String mn = r"m_n",
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow ");

  math.write(r" \begin{array}{l} ");
  math.write(eln);
  math.write(r" = \\");
  math.write(r" \frac{ \left[ \begin{array}{l} ");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r" \\ + (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") ");
  math.write(mn);
  math.write(r" \\ - ");
  math.write(masseNoyau);
  math.write(r" \end{array} \right] \text{u} \cdot c^2 }{ ");
  math.write(A);
  math.write(r" } ");
  math.write(r" \end{array} ");

  if (bold) math.write(r" } ");

  return math.toString();
}

String buildTex2SvgMathCalculEnergieDeLiaisonParNucleon1({
  String eln = r"E_{l/n}",
  String Z = r"Z",
  String A = r"A",
  String mp = r"m_p",
  String mn = r"m_n",
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow ");

  math.write(r" \begin{array}{l} ");
  math.write(eln);
  math.write(r" = \\");
  math.write(r" \frac{ \left[ \begin{array}{l} ");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r"\ \text{u} \\ + (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") ");
  math.write(mn);
  math.write(r"\ \text{u} \\ - ");
  math.write(masseNoyau);
  math.write(r"\ \text{u} ");
  math.write(r" \end{array} \right] \cdot c^2 }{ ");
  math.write(A);
  math.write(r" } ");
  math.write(r" \end{array} ");

  if (bold) math.write(r" } ");

  return math.toString();
}

String buildTex2SvgMathCalculEnergieDeLiaisonParNucleon3({
  String eln = r"E_{l/n}",
  String Z = r"Z",
  String A = r"A",
  String mp = r"m_p",
  String mn = r"m_n",
  String uMeVC2 = PhyNucValuesConstants.uEnMeVC2,
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow ");

  math.write(r" \begin{array}{l} ");
  math.write(eln);
  math.write(r" = \\");
  math.write(r" \frac{ \left[ \begin{array}{l} ");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r" \\ + (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") ");
  math.write(mn);
  math.write(r" \\ - ");
  math.write(masseNoyau);
  math.write(r" \end{array} \right] ");
  math.write(uMeVC2);
  math.write(r" MeV }{ ");
  math.write(A);
  math.write(r" } ");
  math.write(r" \end{array} ");

  if (bold) math.write(r" } ");

  return math.toString();
}

//--------------------------------------------------------------------
