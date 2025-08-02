String buildTex2SvgMathRelationEinstein({
  required String E,
  required String m,
  required String c,
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

  math.write(E);

  math.write(r" = ");

  math.write(m);

  if (uEnMeVC2 != null) {
    math.write(r" \cdot ");
    math.write(uEnMeVC2);
  } else {
    math.write(r" \cdot {");
    math.write(c);
    math.write(r" } ^ 2 ");
  }

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathEnergieDeLiaisonAvecDefautDeMase({
  required String el,
  required String defautDeMasse,
  String? uEnMeVC2,
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

  math.write(el);

  math.write(r" = ");

  math.write(defautDeMasse);

  if (uEnMeVC2 != null) {
    math.write(r" \cdot ");
    math.write(uEnMeVC2);
  } else {
    math.write(r" \cdot {");
    math.write(c);
    math.write(r" } ^ 2 ");
  }

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathDefautDeMasse({
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
    math.write(r" \Rightarrow \ ");
  }

  // Ouverture d'un array pour rendre plus lisible
  math.write(r"\begin{array}{l} ");

  // Ligne 1 : Δm(...) =
  if (defautDeMasse != null) {
    math.write(defautDeMasse);
    math.write(r" = \\ "); // Wrap ici
  } else {
    math.write(r"\Delta m(_{");
    math.write(Z);
    math.write(r"}^{");
    math.write(A);
    math.write(r"} ");
    math.write(X);
    math.write(r") = \\ "); // Wrap ici
  }

  // Ligne 2 : partie entre crochets
  math.write(r" \left[ \begin{array}{l} ");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r" \\ +  (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") \cdot ");
  math.write(mn);
  math.write(r" \end{array} \right] \\ - ");

  // Ligne 3 : masse du noyau
  if (masseNoyau != null) {
    math.write(masseNoyau);
  } else {
    math.write(r" m(_{");
    math.write(Z);
    math.write(r"}^{");
    math.write(A);
    math.write(r"} ");
    math.write(X);
    math.write(r") ");
  }

  math.write(r"\end{array}");

  if (bold) {
    math.write(r"}");
  }

  return math.toString();
}

String buildTex2SvgMathEnergieDeLiaisonParNucleon({
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

  math.write(eln);

  math.write(r" = \\ \displaystyle \frac{ \left[ \begin{array}{l} ");

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

  math.write(r" } \end{array} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathEnergieDeLiaison({
  required String el,
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

  math.write(el);

  math.write(r" = \\ \displaystyle  \left[ \begin{array}{l} ");

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

  math.write(r" \end{array} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}
