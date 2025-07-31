import 'package:scientiboost/core/widgets_builders/pc/nuc/builders.dart';

String buildTex2SvgEquation12({
  // ignore: non_constant_identifier_names
  required String X1,
  // ignore: non_constant_identifier_names
  required String Z1,
  // ignore: non_constant_identifier_names
  required String A1,
  // ignore: non_constant_identifier_names
  required String X2,
  // ignore: non_constant_identifier_names
  required String Z2,
  // ignore: non_constant_identifier_names
  required String A2,
  // ignore: non_constant_identifier_names
  required String X3,
  // ignore: non_constant_identifier_names
  required String Z3,
  // ignore: non_constant_identifier_names
  required String A3,
  String? uEnMeVC2,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r" \Rightarrow \ ");
  }

  math.write(r" \begin{array}{l} ");

  math.write(buildTex2SvgMathNotationNoyau(X: X1, A: A1, Z: Z1));

  math.write(r" \longrightarrow \ ");

  math.write(buildTex2SvgMathNotationNoyau(X: X2, A: A2, Z: Z2));

  math.write(r"\ + \ ");

  math.write(buildTex2SvgMathNotationNoyau(X: X3, A: A3, Z: Z3));

  math.write(r" \end{array} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgEquation13({
  // ignore: non_constant_identifier_names
  required String X1,
  required String cof1,
  // ignore: non_constant_identifier_names
  required String Z1,
  // ignore: non_constant_identifier_names
  required String A1,
  // ignore: non_constant_identifier_names
  required String X2,
  required String cof2,
  // ignore: non_constant_identifier_names
  required String Z2,
  // ignore: non_constant_identifier_names
  required String A2,
  // ignore: non_constant_identifier_names
  required String X3,
  required String cof3,
  // ignore: non_constant_identifier_names
  required String Z3,
  // ignore: non_constant_identifier_names
  required String A3,
  // ignore: non_constant_identifier_names
  required String X4,
  required String cof4,
  // ignore: non_constant_identifier_names
  required String Z4,
  // ignore: non_constant_identifier_names
  required String A4,
  String? uEnMeVC2,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  if (entraineQue) {
    math.write(r" \Rightarrow \ ");
  }

  math.write(r" \begin{array}{l} ");

  math.write(cof1);

  math.write(buildTex2SvgMathNotationNoyau(X: X1, A: A1, Z: Z1));

  math.write(r" \longrightarrow ");

  math.write(cof2);

  math.write(buildTex2SvgMathNotationNoyau(X: X2, A: A2, Z: Z2));

  math.write(r"\ + \ ");

  math.write(cof3);

  math.write(buildTex2SvgMathNotationNoyau(X: X3, A: A3, Z: Z3));

  math.write(r"\ + \ ");

  math.write(cof4);

  math.write(buildTex2SvgMathNotationNoyau(X: X4, A: A4, Z: Z4));

  math.write(r" \end{array} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}
