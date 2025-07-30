String buildTex2SvgMathCalculEnergieDeLiaisonParNucleon1({
  required String eln,
  required String Z,
  required String A,
  required String mp,
  required String mn,
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(r" \begin{array}{l} ");
  math.write(eln);
  math.write(r" = \\");
  math.write(r" \frac{ \left[ \begin{array}{l} ");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r"\ \text{u} \\ + (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") ");
  math.write(mn);
  math.write(r"\ \text{u} \\ - ");
  math.write(masseNoyau);
  math.write(r"\ \text{u} ");
  math.write(r" \end{array} \right] \cdot c^2 }{ ");
  math.write(A);
  math.write(r" } ");
  math.write(r" \end{array} ");

  if (bold) math.write(r" } ");

  return math.toString();
}

String buildTex2SvgMathCalculEnergieDeLiaisonParNucleon2({
  required String eln,
  required String Z,
  required String A,
  required String mp,
  required String mn,
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(r" \begin{array}{l} ");
  math.write(eln);
  math.write(r" = \\");
  math.write(r" \frac{ \left[ \begin{array}{l} ");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r" \\ + (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") ");
  math.write(mn);
  math.write(r" \\ - ");
  math.write(masseNoyau);
  math.write(r" \end{array} \right] \text{u} \cdot c^2 }{ ");
  math.write(A);
  math.write(r" } ");
  math.write(r" \end{array} ");

  if (bold) math.write(r" } ");

  return math.toString();
}

String buildTex2SvgMathCalculEnergieDeLiaisonParNucleon3({
  required String eln,
  required String Z,
  required String A,
  required String mp,
  required String mn,
  required String uMeVC2,
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(r" \begin{array}{l} ");
  math.write(eln);
  math.write(r" = \\");
  math.write(r" \frac{ \left[ \begin{array}{l} ");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r" \\ + (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") ");
  math.write(mn);
  math.write(r" \\ - ");
  math.write(masseNoyau);
  math.write(r" \end{array} \right] ");
  math.write(uMeVC2);
  math.write(r" MeV }{ ");
  math.write(A);
  math.write(r" } ");
  math.write(r" \end{array} ");

  if (bold) math.write(r" } ");

  return math.toString();
}
