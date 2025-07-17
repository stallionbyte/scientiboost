String buildTex2SvgMathRelationEinstein({
  String E = r" E ",
  String m = r" m ",
  String c = r" c ",
  bool bold = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  math.write(E);

  math.write(r" = ");

  math.write(m);

  math.write(r" \cdot {");

  math.write(c);

  math.write(r" } ^ 2 ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathEnergieDeLiaison({
  String m = r" m ",
  String c = r" c ",
  bool bold = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  math.write(r" E_l = \Delta ");

  math.write(m);

  math.write(r" \cdot {");

  math.write(c);

  math.write(r" } ^ 2 ");

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
  String? masseNoyau,
  bool bold = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r"\mathbf{ ");
  }

  // Ouverture d'un array pour rendre plus lisible
  math.write(r"\begin{array}{l} ");

  // Ligne 1 : Δm(...) =
  math.write(r"\Delta m(_{");
  math.write(Z);
  math.write(r"}^{");
  math.write(A);
  math.write(r"} ");
  math.write(X);
  math.write(r") = \\ "); // Wrap ici

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
  String A = r"A",
  String Z = r"Z",
  String X = r"X",
  String mp = r"m_p",
  String mn = r"m_n",
  String? masseNoyau,
  String? uEnMeVC2,
  bool bold = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  math.write(
    r" \begin{array}{l} E_{l/nuc} = \\ \displaystyle \frac{ \left[ \begin{array}{l} ",
  );

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
