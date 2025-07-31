String buildTex2SvgMathGrandeurDisparue1({
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
  if (entraineQue) math.write(r" \Rightarrow ");
  math.write(r" \begin{array}{l} ");
  math.write(X);
  math.write(r" = ");
  math.write(Xo);
  math.write(r" e^{- ");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathGrandeurDisparue2({
  // ignore: non_constant_identifier_names
  required String Xprime,
  // ignore: non_constant_identifier_names
  required String Xo,
  required String X,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow ");
  math.write(r" \begin{array}{l} ");
  math.write(Xprime);
  math.write(r" = ");
  math.write(Xo);
  math.write(r" - ");
  math.write(X);
  math.write(r" \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathGrandeurDisparue3({
  // ignore: non_constant_identifier_names
  required String Xprime,
  // ignore: non_constant_identifier_names
  required String Xo,
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow ");
  math.write(r" \begin{array}{l} ");
  math.write(Xprime);
  math.write(r" = ");
  math.write(Xo);
  math.write(r" - ");
  math.write(Xo);
  math.write(r" e^{- ");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r"} \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathGrandeurDisparue4({
  // ignore: non_constant_identifier_names
  required String Xprime,
  // ignore: non_constant_identifier_names
  required String Xo,
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow ");
  math.write(r" \begin{array}{l} ");
  math.write(Xprime);
  math.write(r" = ");
  math.write(Xo);
  math.write(r" (1 - e^{- ");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r"}) \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}
