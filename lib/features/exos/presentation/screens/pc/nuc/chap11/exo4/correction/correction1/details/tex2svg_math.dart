String buildTex2SvgMathEnergieDeLiaisonInverse2({
  String el = r" E_l ",
  String c = r" c ",
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r"\Rightarrow");
  }

  math.write(r"\Delta m = \frac{ ");

  math.write(el);

  math.write(r" }{ ");

  math.write(c);

  math.write(r" ^2} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathEnergieDeLiaisonParNucleonAvecEnergieDeLiaison({
  String el = r" E_l ",
  String A = r" A ",
  bool bold = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  math.write(r" E_{l/n} = ");

  math.write(r"\frac{");

  math.write(el);

  math.write(r" }{ ");

  math.write(A);

  math.write(r" } ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathEnergieDeLiaisonParNucleonAvecEnergieDeLiaisonInverse({
  String el = r" E_l ",
  String A = r" A ",
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

  math.write(r"\frac{");

  math.write(el);

  math.write(r" }{ ");

  math.write(A);

  math.write(r" } ");

  math.write(r" = E_{l/n}");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathEnergieDeLiaisonAvecEnergieDeLiaisonParNucleon({
  String eln = r" E_{l/n} ",
  String A = r" A ",
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

  math.write(r" E_l = ");

  math.write(eln);

  math.write(r" \cdot ");

  math.write(A);

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathDefautDeMasseAvecEnergieDeLiaisonParNucleon({
  String eln = r" E_{l/n} ",
  String c = r" c ",
  String A = r"A",
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r"\Rightarrow");
  }

  math.write(r" \begin{array}{l} ");

  math.write(r"\Delta m = \\ \frac{ ");

  math.write(eln);

  math.write(r" \cdot ");

  math.write(A);

  math.write(r" }{ ");

  math.write(c);

  math.write(r" ^2} ");

  math.write(r" \end{array} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathXXXX({bool bold = false, bool entraineQue = false}) {
  StringBuffer math = StringBuffer();
  if (bold) {
    math.write(r" \mathbf{ ");
  }
  if (entraineQue) {
    math.write(r" \Rightarrow ");
  }
  math.write(r" \begin{array}{l} ");
  /*code*/
  math.write(r" \end{array} ");
  if (bold) {
    math.write(r" } ");
  }
  return math.toString();
}
