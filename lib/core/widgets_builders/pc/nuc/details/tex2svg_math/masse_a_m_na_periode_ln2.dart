String buildTex2SvgMathMasseAvecAMNaTln2Etape2({
  required String m,

  required String N,
  required String A,
  required String M,
  required String T,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(m);
  math.write(r" \cdot ");
  math.write(r"ln2");
  math.write(r" \cdot ");
  math.write(N);
  math.write(r" = ");
  math.write(A);
  math.write(r" \cdot ");
  math.write(M);
  math.write(r" \cdot ");
  math.write(T);

  if (bold) math.write(r" } ");

  return math.toString();
}
