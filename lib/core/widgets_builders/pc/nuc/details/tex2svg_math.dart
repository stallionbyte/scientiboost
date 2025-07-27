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

String buildTex2SvgMathESurC2({
  required String E,
  required String c,
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
  required String m,
  required String E,
  required String c,
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

// Details calcul energie de liaison par nucléon en MeV

String buildTex2SvgMathCalculEnergieDeLiaison1({
  required String el,
  required String Z,
  required String mp,
  required String A,
  required String mn,
  required String masseNoyau,
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
  required String el,
  required String Z,
  required String mp,
  required String A,
  required String mn,
  required String masseNoyau,
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
  required String el,
  required String Z,
  required String mp,
  required String A,
  required String mn,
  required String uMeVC2,
  required String masseNoyau,
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

String buildTex2SvgMathActiviteInverse({
  required String A,
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

// Details calcul energie de liaison par nucléon en MeV

String buildTex2SvgMathCalculEnergieDeLiaisonParNucleon1({
  required String eln,
  required String Z,
  required String A,
  required String mp,
  required String mn,
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

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

String buildTex2SvgMathCalculEnergieDeLiaisonParNucleon2({
  required String eln,
  required String Z,
  required String A,
  required String mp,
  required String mn,
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

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

String buildTex2SvgMathCalculEnergieDeLiaisonParNucleon3({
  required String eln,
  required String Z,
  required String A,
  required String mp,
  required String mn,
  required String uMeVC2,
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

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

// Details calcul du temps avec A et A0

String buildTex2SvgMathCalculTempsAvecXEtXo3({
  required String A,
  required String Ao,
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} \Large{e}^{ - ");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r"} = \frac{");
  math.write(A);
  math.write(r"}{");
  math.write(Ao);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathCalculTempsAvecXEtXo4({
  required String A,
  required String Ao,
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} -");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r" = \ln \frac{");
  math.write(A);
  math.write(r"}{");
  math.write(Ao);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathCalculTempsAvecXEtXo5({
  required String A,
  required String Ao,
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} -");
  math.write(t);
  math.write(r" = \frac{1}{");
  math.write(lambda);
  math.write(r"} \ln \frac{");
  math.write(A);
  math.write(r"}{");
  math.write(Ao);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathCalculTempsAvecXEtXo6({
  required String A,
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
  math.write(t);
  math.write(r" = - \frac{1}{");
  math.write(lambda);
  math.write(r"} \ln \frac{");
  math.write(A);
  math.write(r"}{");
  math.write(Ao);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}
