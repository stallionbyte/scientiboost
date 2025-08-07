import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/builders.dart';

String buildTex2SvgMathNombreDeNoyauAvecMasse({
  required String N,
  required String m,
  required String M,
  required String avogadro,
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

  math.write(N);

  math.write(r" = ");

  math.write(r"\frac{");

  math.write(m);

  math.write(r"\ \cdot \ ");

  math.write(avogadro);

  math.write(r"}{");

  math.write(M);

  math.write(r"}");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathConstanteRadioactivite({
  required String constanteRadioActive,
  required String T,
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

  math.write(constanteRadioActive);

  math.write(r"\ =\ ");

  math.write(r"\frac{ln2}{");

  math.write(T);

  math.write(r"}");

  if (bold) {
    math.write(r" } ");
  }
  return math.toString();
}

String buildTex2SvgMathLoiDeDecroissanceLike({
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
  math.write(r" \Large{e}^{ -");
  math.write(r" ");
  math.write(lambda);
  math.write(r" ");
  math.write(t);
  math.write(r" } ");
  math.write(r" \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathTempsAvecLambdaXEtXo({
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

String buildTex2SvgMathActivite4({
  required String A,
  required String m,
  required String M,

  required String T,
  // ignore: non_constant_identifier_names
  required String Na,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow ");

  math.write(r" \begin{array}{l} ");
  math.write(A);
  math.write(r" = ");
  math.write(r" \frac{");
  math.write(m);
  math.write(r"}{");
  math.write(M);
  math.write(r"} \cdot ");
  math.write(r" \frac{");
  math.write(r"ln2");
  math.write(r"}{");
  math.write(T);
  math.write(r"} \cdot ");
  math.write(Na);
  math.write(r" ");
  math.write(r" \end{array} ");

  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathActivite2({
  required String A,
  required String lambda,
  required String N,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow ");

  math.write(r" \begin{array}{l} ");
  math.write(A);
  math.write(r" = ");
  math.write(lambda);
  math.write(r" \cdot ");
  math.write(N);
  math.write(r" \end{array} ");

  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathActivite3({
  required String A,
  required String lambda,
  required String m,
  required String M,
  // ignore: non_constant_identifier_names
  required String Na,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow ");

  math.write(r" \begin{array}{l} ");
  math.write(A);
  math.write(r" = ");
  math.write(lambda);
  math.write(r" \cdot \frac{");
  math.write(m);
  math.write(r"}{");
  math.write(M);
  math.write(r"} \cdot ");
  math.write(Na);
  math.write(r" \end{array} ");

  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathActiviteAvecTmoMNaTemps({
  required String A,
  required String T,
  required String mo,
  required String M,
  // ignore: non_constant_identifier_names
  required String Na,
  required String t,
  bool bold = false,
  bool entraineQue = false,
  bool wrap = false,
  bool wrap2 = false,
  bool wrap3 = false,
  bool wrap4 = false,
}) {
  StringBuffer math = StringBuffer();
  final wrapCode = wrap ? r" \\ " : r"";
  final wrap2Code = wrap2 ? r" \\ " : r"";
  final wrap3Code = wrap3 ? r" \\ " : r"";
  final wrap4Code = wrap4 ? r" \\ " : r"";
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(r" \begin{array}{l} ");
  math.write(A);
  math.write(r" = ");
  math.write(wrapCode);
  math.write(r" \frac{\ln 2}{");
  math.write(T);
  math.write(r"}");
  math.write(wrap2Code);
  math.write(r"\cdot \frac{");
  math.write(mo);
  math.write(r"}{");
  math.write(M);
  math.write(r"}");
  math.write(wrap3Code);
  math.write(r" \cdot ");
  math.write(Na);
  math.write(wrap4Code);
  math.write(r" \cdot e^{-\frac{\ln 2}{");
  math.write(T);
  math.write(r"} ");
  math.write(t);
  math.write(r"} ");
  math.write(r" \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathMasseAvecAMNaLambda({
  required String m,
  required String A,
  required String M,
  required String lambda,
  // ignore: non_constant_identifier_names
  required String Na,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(m);
  math.write(r" = \frac{");
  math.write(A);
  math.write(r" \cdot ");
  math.write(M);
  math.write(r"}{");
  math.write(lambda);
  math.write(r" \cdot ");
  math.write(Na);
  math.write(r"}");

  if (bold) math.write(r" } ");

  return math.toString();
}

String buildTex2SvgMathMasseAvecAMNaTln2({
  required String m,
  required String A,
  required String M,
  required String T,
  required String N,

  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(m);
  math.write(r" = \frac{");
  math.write(A);
  math.write(r" \cdot ");
  math.write(M);
  math.write(r" \cdot ");
  math.write(T);
  math.write(r"}{");
  math.write(N);
  math.write(r" \cdot ");
  math.write(r"ln2");
  math.write(r"}");

  if (bold) math.write(r" } ");

  return math.toString();
}

String buildTex2SvgMathPerteDeMasseReaction12({
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

  required String perteDeMasse,

  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) {
    math.write(r" \mathbf{ ");
  }
  if (entraineQue) {
    math.write(r" \Rightarrow ");
  }
  math.write(r" \begin{array}{l} ");

  math.write(perteDeMasse);

  math.write(r"\ = \ ");

  math.write(r"m(\ ");

  math.write(buildTex2SvgMathNotationNoyau(X: X1, A: A1, Z: Z1));

  math.write(r"\ ) \\");

  math.write(r" - ");

  math.write(r"\left[");

  math.write(r"m(\ ");

  math.write(buildTex2SvgMathNotationNoyau(X: X2, A: A2, Z: Z2));

  math.write(r"\ )");

  math.write(r" + ");

  math.write(r"m(\ ");

  math.write(buildTex2SvgMathNotationNoyau(X: X3, A: A3, Z: Z3));

  math.write(r"\ )");

  math.write(r"\right]");

  math.write(r" \end{array} ");
  if (bold) {
    math.write(r" } ");
  }
  return math.toString();
}

String buildTex2SvgMathEnergieReaction12({
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

  required String E,

  required String c,

  String? m1,

  String? m2,

  String? m3,

  String? uEnMeVC2,

  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) {
    math.write(r" \mathbf{ ");
  }
  if (entraineQue) {
    math.write(r" \Rightarrow ");
  }
  math.write(r" \begin{array}{l} ");

  math.write(E);

  math.write(r"\ =  \mathbf{(} \ ");

  if (m1 != null) {
    math.write(m1);
  } else {
    math.write(r"m(\ ");

    math.write(buildTex2SvgMathNotationNoyau(X: X1, A: A1, Z: Z1));

    math.write(r"\ ) ");
  }

  math.write(r"\\ - ");

  math.write(r"(");

  if (m2 != null) {
    math.write(m2);
  } else {
    math.write(r"m(\ ");

    math.write(buildTex2SvgMathNotationNoyau(X: X2, A: A2, Z: Z2));

    math.write(r"\ )");
  }

  math.write(r" + ");

  if (m3 != null) {
    math.write(m3);
  } else {
    math.write(r"m(\ ");

    math.write(buildTex2SvgMathNotationNoyau(X: X3, A: A3, Z: Z3));

    math.write(r"\ )");
  }

  math.write(r"\ ) \ ");

  math.write(r" \mathbf{)} \cdot ");

  if (uEnMeVC2 != null) {
    math.write(uEnMeVC2);
  } else {
    math.write(c);
    math.write(r"^2");
  }

  math.write(r" \end{array} ");
  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathPeriodeAvecLambda({
  required T,
  required lambda,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) {
    math.write(r" \mathbf{ ");
  }
  if (entraineQue) {
    math.write(r" \Rightarrow ");
  }
  math.write(r" \begin{array}{l} ");

  math.write(T);

  math.write(r"\ =\ ");

  math.write(r"\frac{ln2}{");

  math.write(lambda);

  math.write(r"}");

  math.write(r" \end{array} ");
  if (bold) {
    math.write(r" } ");
  }
  return math.toString();
}

String buildTex2SvgMathActiviteAvecLambdaNoTemps({
  required String A,
  required String lambda,
  // ignore: non_constant_identifier_names
  required String No,
  required String t,
  bool bold = false,
  bool entraineQue = false,
  bool wrap = false,
  bool wrap2 = false,
  bool wrap3 = false,
}) {
  StringBuffer math = StringBuffer();
  final wrapCode = wrap ? r" \\ " : r"";
  final wrap2Code = wrap2 ? r" \\ " : r"";
  final wrap3Code = wrap3 ? r" \\ " : r"";

  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");

  math.write(r" \begin{array}{l} ");
  math.write(A);
  math.write(r" = ");
  math.write(wrapCode);
  math.write(lambda);
  math.write(r" \cdot ");
  math.write(No);
  math.write(wrap2Code);
  math.write(r" \cdot ");
  math.write(r" \Large{e}^{ -");
  math.write(r" ");
  math.write(lambda);
  math.write(r" ");
  math.write(wrap3Code);
  math.write(t);
  math.write(r" } ");
  math.write(r" \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}

String buildTex2SvgMathActiviteAvecLambdaN({
  required String A,
  required String lambda,
  required String N,
  bool bold = false,
  bool entraineQue = false,
}) {
  StringBuffer math = StringBuffer();
  if (bold) math.write(r" \mathbf{ ");
  if (entraineQue) math.write(r" \Rightarrow \ ");
  math.write(r" \begin{array}{l} ");
  math.write(A);
  math.write(r" = ");
  math.write(lambda);
  math.write(r" \cdot ");
  math.write(N);
  math.write(r" \end{array} ");
  if (bold) math.write(r" } ");
  return math.toString();
}
