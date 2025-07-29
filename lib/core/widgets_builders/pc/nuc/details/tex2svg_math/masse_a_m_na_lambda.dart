String buildTex2SvgMathMasseAvecAMNaLambdaEtape2({
  required String lambda,
  required String m,
  required String M,
  // ignore: non_constant_identifier_names
  required String Na,
  required String A,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(lambda);
  math.write(r" \cdot ");
  math.write(m);
  math.write(r" \cdot ");
  math.write(Na);
  math.write(r" = ");
  math.write(A);
  math.write(r" \cdot ");
  math.write(M);

  if (bold) math.write(r" } ");

  return math.toString();
}
