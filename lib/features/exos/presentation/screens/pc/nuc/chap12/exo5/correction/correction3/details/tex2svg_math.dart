String buildTex2SvgMathNombreDisparueSuite1({
  // ignore: non_constant_identifier_names
  required String Ao,
  required String lambda,
  // ignore: non_constant_identifier_names
  required String No,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} ");
  math.write(Ao);
  math.write(r" = ");
  math.write(lambda);
  math.write(r" ");
  math.write(No);
  math.write(r" \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathNombreDisparueSuite2({
  required String lambda,
  // ignore: non_constant_identifier_names
  required String No,
  // ignore: non_constant_identifier_names
  required String Ao,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} ");
  math.write(lambda);
  math.write(r" ");
  math.write(No);
  math.write(r" = ");
  math.write(Ao);
  math.write(r" \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathNombreDisparueSuite3({
  // ignore: non_constant_identifier_names
  required String No,
  // ignore: non_constant_identifier_names
  required String Ao,
  required String lambda,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} ");
  math.write(No);
  math.write(r" = \frac{");
  math.write(Ao);
  math.write(r"}{");
  math.write(lambda);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathNombreDisparueSuite4({
  required String lambda,
  // ignore: non_constant_identifier_names
  required String T,
  bool bold = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  math.write(r" \begin{array}{l} ");
  math.write(r"Or \ \ ");
  math.write(lambda);
  math.write(r" = \frac{ln2}{");
  math.write(T);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathNombreDisparueSuite5({
  // ignore: non_constant_identifier_names
  required String No,
  // ignore: non_constant_identifier_names
  required String Ao,
  // ignore: non_constant_identifier_names
  required String T,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} ");
  math.write(No);
  math.write(r" = \frac{");
  math.write(Ao);
  math.write(r"}{\frac{ln2}{");
  math.write(T);
  math.write(r"}} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathNombreDisparueSuite6({
  // ignore: non_constant_identifier_names
  required String No,
  // ignore: non_constant_identifier_names
  required String Ao,
  // ignore: non_constant_identifier_names
  required String T,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} ");
  math.write(No);
  math.write(r" = \frac{");
  math.write(Ao);
  math.write(r".");
  math.write(T);
  math.write(r"}{ln2} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathNombreDisparueSuite7({
  // ignore: non_constant_identifier_names
  required String NPrime,
  // ignore: non_constant_identifier_names
  required String Ao,
  // ignore: non_constant_identifier_names
  required String T,
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} ");
  math.write(NPrime);
  math.write(r" = \frac{");
  math.write(Ao);
  math.write(r".");
  math.write(T);
  math.write(r"}{ln2} (1 - e^{-");
  math.write(lambda);
  math.write(r" t}) \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathNombreDisparueSuite8({
  // ignore: non_constant_identifier_names
  required String NPrime,
  // ignore: non_constant_identifier_names
  required String Ao,
  // ignore: non_constant_identifier_names
  required String T,
  required String t,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} ");
  math.write(NPrime);
  math.write(r" = \frac{");
  math.write(Ao);
  math.write(r".");
  math.write(T);
  math.write(r"}{ln2} (1 - e^{-\frac{ln2}{");
  math.write(T);
  math.write(r"}");
  math.write(t);
  math.write(r"}) \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}
