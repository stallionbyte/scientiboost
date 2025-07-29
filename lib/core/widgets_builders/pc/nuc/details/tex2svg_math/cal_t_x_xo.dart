String buildTex2SvgMathCalculTempsAvecXEtXo3({
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
