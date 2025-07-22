String buildTex2SvgMathRelationEinstein({
  String E = r" E ",
  String m = r" m ",
  String c = r" c ",
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
  String el = r" E_l ",
  String defautDeMasse = r" \Delta m ",
  String? uEnMeVC2,
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
    math.write(r" \Rightarrow ");
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
  math.write(r" + \\ (");
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
  String el = r"E_l",
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

String buildTex2SvgMathNombreDeNoyauAvecMasse({
  String N = r"N",
  String m = r"m",
  String M = r"M",
  String avogadro = r"\mathcal{N}_A",
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

  math.write(N);

  math.write(r" = ");

  math.write(r"\frac{");

  math.write(m);

  math.write(r"\ \cdot \ ");

  math.write(avogadro);

  math.write(r"}{");

  math.write(M);

  math.write(r"}");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathRegleDe3({
  required String part1,
  required String part2,
  required String part3,
  required String left,
  bool border = false,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (entraineQue) {
    math.write(r" \Rightarrow ");
  }

  // Utilisation d'un array à 3 colonnes de largeur égale
  math.write(r"\begin{array}{l} ");

  // Ligne 1
  math.write(part1);
  math.write(r"\ \ ");
  math.write(r" \longrightarrow ");
  math.write(r"\ \ ");
  math.write(part2);
  math.write(r" \\ ");

  // Ligne 2
  math.write(part3);
  math.write(r"\ \ ");
  math.write(r" \longrightarrow ");
  math.write(r"\ \ ");
  math.write(r" ? ");
  math.write(r" \\ ");
  math.write(r" \\ ");

  // Ligne 3 : calcul

  if (border) {
    math.write(r"\boxed{");
  }

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  math.write(left);
  math.write(r" = \displaystyle \frac{ ");
  math.write(part2);
  math.write(r" \cdot ");
  math.write(part3);
  math.write(r" }{ ");
  math.write(part1);
  math.write(r" } ");

  if (bold) {
    math.write(r" }");
  }

  if (border) {
    math.write(r" } ");
  }

  math.write(r"\end{array} ");

  return math.toString();
}
