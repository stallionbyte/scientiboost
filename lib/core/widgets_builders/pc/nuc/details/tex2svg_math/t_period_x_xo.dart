String buildTex2SvgMathTempsAvecTXEtXo1({
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
  math.write(r" \begin{array}{l} \Large{e}^{ - ");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r"} = \frac{");
  math.write(X);
  math.write(r"}{");
  math.write(Xo);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathTempsAvecTXEtXo2({
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
  math.write(r" \begin{array}{l} -");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r" = \ln \frac{");
  math.write(X);
  math.write(r"}{");
  math.write(Xo);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathTempsAvecTXEtXo3({
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
  math.write(r" \begin{array}{l} -");
  math.write(t);
  math.write(r" = \frac{1}{");
  math.write(lambda);
  math.write(r"} \ln \frac{");
  math.write(X);
  math.write(r"}{");
  math.write(Xo);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathTempsAvecTXEtXo4({
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
  math.write(t);
  math.write(r" = - \frac{1}{");
  math.write(lambda);
  math.write(r"} \ln \frac{");
  math.write(X);
  math.write(r"}{");
  math.write(Xo);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathTempsAvecTXEtXo5({
  required String lambda,
  required String T,

  // ignore: non_constant_identifier_names
  bool bold = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");

  math.write(r" \begin{array}{l} ");
  math.write(r"Or \ \ ");
  math.write(lambda);
  math.write(r" = \frac{");
  math.write(r"ln2");
  math.write(r"}{");
  math.write(T);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathTempsAvecTXEtXo6({
  required String lambda,
  required String T,

  // ignore: non_constant_identifier_names
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} \frac{1}{");
  math.write(lambda);
  math.write(r"} = \frac{");
  math.write(T);
  math.write(r"}{");
  math.write(r"ln2");
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathTempsAvecTXEtXo7({
  required String t,
  required String T,

  // ignore: non_constant_identifier_names
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
  math.write(t);
  math.write(r" = - \frac{");
  math.write(T);
  math.write(r"}{");
  math.write(r"ln2");
  math.write(r"} \ln \frac{");
  math.write(X);
  math.write(r"}{");
  math.write(Xo);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}
