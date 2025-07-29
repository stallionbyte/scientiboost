String buildTex2SvgMathDefautDeMasseInverse({
  required String X,
  required String A,
  required String Z,
  required String mp,
  required String mn,
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

String buildTex2SvgMathEnergieDeLiaisonInverse({
  required String c,
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
    math.write(r" \Rightarrow \ ");
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
  required String eln,
  required String A,
  required String Z,
  required String X,
  required String mp,
  required String mn,
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
    math.write(r" \Rightarrow \ ");
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
  required String E,
  required String m,
  required String c,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r" \Rightarrow \ ");
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

String buildTex2SvgMathActiviteInverse({
  required String A,
  // ignore: non_constant_identifier_names
  required String Ao,
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} ");
  math.write(Ao);
  math.write(r" \Large{e}^{ - ");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r"} = ");
  math.write(A);
  math.write(r" \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathActivite3Inverse({
  required String lambda,
  required String m,
  required String M,
  // ignore: non_constant_identifier_names
  required String Na,
  required String A,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(lambda);
  math.write(r" \cdot \frac{");
  math.write(m);
  math.write(r"}{");
  math.write(M);
  math.write(r"} \cdot ");
  math.write(Na);
  math.write(r" = ");
  math.write(A);

  if (bold) math.write(r" } ");

  return math.toString();
}

String buildTex2SvgMathActivite4Inverse({
  required String m,
  required String M,
  required String T,
  required String N,
  required String A,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(r" \frac{");
  math.write(m);
  math.write(r"}{");
  math.write(M);
  math.write(r"} \cdot \frac{");
  math.write(r"ln2");
  math.write(r"}{");
  math.write(T);
  math.write(r"} \cdot ");
  math.write(N);
  math.write(r" = ");
  math.write(A);

  if (bold) math.write(r" } ");

  return math.toString();
}
