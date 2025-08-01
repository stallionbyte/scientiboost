export 'ener_liaison.dart';
export 'ener_liaison_nuc.dart';
export 't_lambda_x_xo.dart';
export 't_period_x_xo.dart';
export 'masse_a_m_na_lambda.dart';
export 'masse_a_m_na_periode_ln2.dart';
export 'inverses.dart';
export 'grandeur_disparue.dart';
export 't_fraction_grandeur_restante.dart';

String buildTex2SvgMathESurC2({
  required String E,
  required String c,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r"\Rightarrow ");
  }

  math.write(r" \frac{ ");

  math.write(E);

  math.write(r" }{ ");

  math.write(c);

  math.write(r" ^2} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathmEgaleESurC2({
  required String m,
  required String E,
  required String c,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r"\Rightarrow ");
  }

  math.write(m);

  math.write(r" = \frac{ ");

  math.write(E);

  math.write(r" }{ ");

  math.write(c);

  math.write(r" ^2} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathAoAvecALambdaTemps({
  // ignore: non_constant_identifier_names
  required String Ao,
  required String A,
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(r" \begin{array}{l} ");
  math.write(Ao);
  math.write(r" = ");
  math.write(r" \frac{ ");
  math.write(A);
  math.write(r" }{ \Large{e}^{ - ");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r" } } ");
  math.write(r" \end{array} ");

  if (bold) math.write(r" } ");

  return math.toString();
}
