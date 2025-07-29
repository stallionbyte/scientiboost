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

String buildTex2SvgMathNombreDeNoyauAvecMasse({
  required String N,
  required String m,
  required String M,
  required String avogadro,
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

String buildTex2SvgMathConstanteRadioactivite({
  required String constanteRadioActive,
  required String T,
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

  math.write(constanteRadioActive);

  math.write(r"\ =\ ");

  math.write(r"\frac{ln2}{");

  math.write(T);

  math.write(r"}");

  if (bold) {
    math.write(r" } ");
  }
  return math.toString();
}

String buildTex2SvgMathLoiDeDecroissanceLike({
  required String X,
  // ignore: non_constant_identifier_names
  required String Xo,
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} ");
  math.write(X);
  math.write(r" = ");
  math.write(Xo);
  math.write(r" \Large{e}^{ -");
  math.write(r" ");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r" } ");
  math.write(r" \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathTempsAvecLambdaXEtXo({
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

String buildTex2SvgMathActivite4({
  required String A,
  required String m,
  required String M,

  required String T,
  // ignore: non_constant_identifier_names
  required String Na,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow ");

  math.write(r" \begin{array}{l} ");
  math.write(A);
  math.write(r" = ");
  math.write(r" \frac{");
  math.write(m);
  math.write(r"}{");
  math.write(M);
  math.write(r"} \cdot ");
  math.write(r" \frac{");
  math.write(r"ln2");
  math.write(r"}{");
  math.write(T);
  math.write(r"} \cdot ");
  math.write(Na);
  math.write(r" ");
  math.write(r" \end{array} ");

  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathActivite2({
  required String A,
  required String lambda,
  required String N,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow ");

  math.write(r" \begin{array}{l} ");
  math.write(A);
  math.write(r" = ");
  math.write(lambda);
  math.write(r" \cdot ");
  math.write(N);
  math.write(r" \end{array} ");

  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathActivite3({
  required String A,
  required String lambda,
  required String m,
  required String M,
  // ignore: non_constant_identifier_names
  required String Na,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow ");

  math.write(r" \begin{array}{l} ");
  math.write(A);
  math.write(r" = ");
  math.write(lambda);
  math.write(r" \cdot \frac{");
  math.write(m);
  math.write(r"}{");
  math.write(M);
  math.write(r"} \cdot ");
  math.write(Na);
  math.write(r" \end{array} ");

  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathMasseAvecAMNaLambda({
  required String m,
  required String A,
  required String M,
  required String lambda,
  // ignore: non_constant_identifier_names
  required String Na,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(m);
  math.write(r" = \frac{");
  math.write(A);
  math.write(r" \cdot ");
  math.write(M);
  math.write(r"}{");
  math.write(lambda);
  math.write(r" \cdot ");
  math.write(Na);
  math.write(r"}");

  if (bold) math.write(r" } ");

  return math.toString();
}

String buildTex2SvgMathMasseAvecAMNaTln2({
  required String m,
  required String A,
  required String M,
  required String T,
  required String N,

  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(m);
  math.write(r" = \frac{");
  math.write(A);
  math.write(r" \cdot ");
  math.write(M);
  math.write(r" \cdot ");
  math.write(T);
  math.write(r"}{");
  math.write(N);
  math.write(r" \cdot ");
  math.write(r"ln2");
  math.write(r"}");

  if (bold) math.write(r" } ");

  return math.toString();
}
