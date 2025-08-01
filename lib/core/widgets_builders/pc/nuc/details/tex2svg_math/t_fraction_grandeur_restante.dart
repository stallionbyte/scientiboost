/// Génère l'équation: X = Xo * e^(-lambda * t)
String buildTex2SvgMathTempsFromFractionGrandeurRestante1({
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
  math.write(r" e^{ -");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

/// Génère l'équation: X = 2/3 * Xo
String buildTex2SvgMathTempsFromFractionGrandeurRestante2({
  required String X,
  // ignore: non_constant_identifier_names
  required String Xo,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} ");
  math.write(X);
  math.write(r" = \frac{2}{3} ");
  math.write(Xo);
  math.write(r" \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

/// Génère l'équation: 2/3 * Xo = Xo * e^(-lambda * t)
String buildTex2SvgMathTempsFromFractionGrandeurRestante3({
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
  math.write(r" \begin{array}{l} \frac{2}{3} ");
  math.write(Xo);
  math.write(r" = ");
  math.write(Xo);
  math.write(r" e^{ -");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

/// Génère l'équation: 2/3 = e^(-lambda * t)
String buildTex2SvgMathTempsFromFractionGrandeurRestante4({
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} \frac{2}{3} = e^{ -");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

/// Génère l'équation: e^(-lambda * t) = 2/3
String buildTex2SvgMathTempsFromFractionGrandeurRestante5({
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} e^{ -");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r"} = \frac{2}{3} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

/// Génère l'équation: -lambda * t = ln(2/3)
String buildTex2SvgMathTempsFromFractionGrandeurRestante6({
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
  math.write(r" = \ln \frac{2}{3} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

/// Génère l'équation: -t = (1/lambda) * ln(2/3)
String buildTex2SvgMathTempsFromFractionGrandeurRestante7({
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
  math.write(r"} \ln \frac{2}{3} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

/// Génère l'équation: t = -(1/lambda) * ln(2/3)
String buildTex2SvgMathTempsFromFractionGrandeurRestante8({
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
  math.write(r"} \ln \frac{2}{3} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}
