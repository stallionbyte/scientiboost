// Fonctions paramétrées pour chaque étape de la démonstration de buildTex2SvgMath.jpg

String buildTex2SvgMathMasseNoyauFromEnergieDeLiaisonParNucleon1({
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String X = r"X",
  String c = r"c",
  String eln = r"E_{l/nuc}",
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (entraineQue) {
    math.write(r"\Rightarrow ");
  }

  math.write(r"\left[\begin{array}{l}");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r"\\");
  math.write(r"+ (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") \cdot ");
  math.write(mn);
  math.write(r"\\");
  math.write(r" - m(^{");
  math.write(A);
  math.write(r"}_{");
  math.write(Z);
  math.write(r"} ");
  math.write(X);
  math.write(r")");
  math.write(r"\end{array}\right] \cdot ");
  math.write(c);
  math.write(r"^2 = ");
  math.write(A);
  math.write(r" \cdot ");
  math.write(eln);
  return math.toString();
}

String buildTex2SvgMathMasseNoyauFromEnergieDeLiaisonParNucleon2({
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String X = r"X",
  String eln = r"E_{l/nuc}",
  String c = r"c",
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (entraineQue) {
    math.write(r"\Rightarrow ");
  }
  math.write(r"\left[ \begin{array}{l} ");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r"\\");
  math.write(r"+ (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") \cdot ");
  math.write(mn);
  math.write(r"\\");
  math.write(r"- m(^{");
  math.write(A);
  math.write(r"}_{");
  math.write(Z);
  math.write(r"} ");
  math.write(X);
  math.write(r")");
  math.write(r" \end{array} \right] = \frac{");
  math.write(A);
  math.write(r" \cdot ");
  math.write(eln);
  math.write(r"}{");
  math.write(c);
  math.write(r"^2}");
  return math.toString();
}

String buildTex2SvgMathMasseNoyauFromEnergieDeLiaisonParNucleon3({
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String X = r"X",
  String eln = r"E_{l/nuc}",
  String c = r"c",
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (entraineQue) {
    math.write(r"\Rightarrow ");
  }
  math.write(r"\begin{array}{rl}");
  math.write(r"- m(^{");
  math.write(A);
  math.write(r"}_{");
  math.write(Z);
  math.write(r"} ");
  math.write(X);
  math.write(r") = & \frac{");
  math.write(A);
  math.write(r" \cdot ");
  math.write(eln);
  math.write(r"}{");
  math.write(c);
  math.write(r"^2} \\");
  math.write(r" & -");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r" \\");
  math.write(r" & - (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") \cdot ");
  math.write(mn);
  math.write(r" ");
  math.write(r"\end{array}");
  return math.toString();
}

String buildTex2SvgMathMasseNoyauFromEnergieDeLiaisonParNucleon4({
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String X = r"X",
  String eln = r"E_{l/nuc}",
  String c = r"c",
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (entraineQue) {
    math.write(r"\Rightarrow ");
  }
  math.write(r"\begin{array}{rl}");
  math.write(r"m(^{");
  math.write(A);
  math.write(r"}_{");
  math.write(Z);
  math.write(r"} ");
  math.write(X);
  math.write(r") = & - \frac{");
  math.write(A);
  math.write(r" \cdot ");
  math.write(eln);
  math.write(r"}{");
  math.write(c);
  math.write(r"^2} \\");
  math.write(r" & +");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r" \\");
  math.write(r" & + (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") \cdot ");
  math.write(mn);
  math.write(r" ");
  math.write(r"\end{array}");
  return math.toString();
}

String buildTex2SvgMathMasseNoyauFromEnergieDeLiaisonParNucleon5({
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String X = r"X",
  String eln = r"E_{l/nuc}",

  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (entraineQue) {
    math.write(r"\Rightarrow ");
  }
  math.write(r"\begin{array}{rl}");
  math.write(r"m(^{");
  math.write(A);
  math.write(r"}_{");
  math.write(Z);
  math.write(r"} ");
  math.write(X);
  math.write(r") = & - ");
  math.write(A);
  math.write(r" \cdot ");
  math.write(eln);
  math.write(r" \\");
  math.write(r" & +");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r" \\");
  math.write(r" & + (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") \cdot ");
  math.write(mn);
  math.write(r" ");
  math.write(r"\end{array}");
  return math.toString();
}
