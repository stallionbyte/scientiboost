import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';

import 'tex2svg_math.dart';

Widget mEgaleESurC2({
  String E = r" E ",
  String c = r" c ",
  String m = r"m",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathmEgaleESurC2(
      E: E,
      c: c,
      m: m,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

WidgetSpan eSurC2({
  String E = r" E ",
  String c = r" c ",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathESurC2(
      E: E,
      c: c,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget energieDeLiaisonInverse({
  String? defautDeMasse,
  String? energieDeLiaison,
  String c = r" c ",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaisonInverse(
      defautDeMasse: defautDeMasse,
      energieDeLiaison: energieDeLiaison,
      c: c,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget energieDeLiaisonParNucleonInverse({
  String eln = r"E_{l/nuc}",
  String A = r"A",
  String Z = r"Z",
  String X = r"X",
  String mp = r"m_p",
  String mn = r"m_n",
  String? masseNoyau,
  String? uEnMeVC2,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaisonParNucleonInverse(
      eln: eln,
      A: A,
      Z: Z,
      X: X,
      mp: mp,
      mn: mn,
      masseNoyau: masseNoyau,
      uEnMeVC2: uEnMeVC2,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget defautDeMasseInverse({
  String X = r" X ",
  String A = r" A ",
  String Z = r" Z ",
  String mp = r" m_p ",
  String mn = r" m_n ",
  String? defautDeMasse,
  String? masseNoyau,
  bool bold = false,
  double scale = 1.0,
  bool entraineQue = false,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathDefautDeMasseInverse(
      X: X,
      A: A,
      Z: Z,
      mp: mp,
      mn: mn,
      defautDeMasse: defautDeMasse,
      masseNoyau: masseNoyau,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget relationEinsteinInverse({
  String E = r" E ",
  String m = "m",
  String c = r" c ",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathRelationEinsteinInverse(
      E: E,
      m: m,
      c: c,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

// Details calcul energie de liaison en MeV

Widget calculEnergieDeLiaison({
  String el = r"E_l",
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String uEnMeVC2 = PhyNucValuesConstants.uEnMeVC2,
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
      energieDeLiaisonParNucleon(scale: 6.0),

      const SizedBox(height: 20),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculEnergieDeLiaison1(
          el: el,
          mp: mp,
          mn: mn,
          Z: Z,
          A: A,
          masseNoyau: masseNoyau,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 20),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculEnergieDeLiaison2(
          el: el,
          Z: Z,
          mp: mp,
          A: A,
          mn: mn,
          masseNoyau: masseNoyau,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 20),

      transition(transition: "Or"),

      const SizedBox(height: 20),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            TextSpan(text: "1u = $uEnMeVC2 "),

            buildTex2SvgInWidgetSpan(math: r"MeV/c^2"),
          ],
        ),
      ),

      const SizedBox(height: 20),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            buildTex2SvgInWidgetSpan(math: r"\Rightarrow"),

            TextSpan(text: " 1u = $uEnMeVC2 "),

            buildTex2SvgInWidgetSpan(math: r"\frac{MeV}{c^2}", scale: 1.8),
          ],
        ),
      ),

      const SizedBox(height: 20),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            buildTex2SvgInWidgetSpan(math: r"\Rightarrow"),

            buildTex2SvgInWidgetSpan(math: r"1u \cdot c^2", offsetDy: -4.0),

            TextSpan(text: " = $uEnMeVC2 MeV"),
          ],
        ),
      ),

      const SizedBox(height: 20),

      transition(transition: "D'où"),

      const SizedBox(height: 20),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculEnergieDeLiaison3(
          el: el,
          Z: Z,
          mp: mp,
          A: A,
          mn: mn,
          masseNoyau: masseNoyau,
          uMeVC2: uEnMeVC2,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 20),
    ],
  );
}

// Details calcul energie de liaison par nucléon en MeV

Widget calculEnergieDeLiaisonParNucleon({
  String eln = r"E_{l/nuc}",
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String uEnMeVC2 = PhyNucValuesConstants.uEnMeVC2,
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
      energieDeLiaisonParNucleon(scale: 6.0),

      const SizedBox(height: 40),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculEnergieDeLiaisonParNucleon1(
          eln: eln,
          mp: mp,
          mn: mn,
          Z: Z,
          A: A,
          masseNoyau: masseNoyau,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 40),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculEnergieDeLiaisonParNucleon2(
          eln: eln,
          Z: Z,
          mp: mp,
          A: A,
          mn: mn,
          masseNoyau: masseNoyau,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 40),

      transition(transition: "Or"),

      const SizedBox(height: 40),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            TextSpan(text: "1u = $uEnMeVC2 "),

            buildTex2SvgInWidgetSpan(math: r"MeV/c^2"),
          ],
        ),
      ),

      const SizedBox(height: 40),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            buildTex2SvgInWidgetSpan(math: r"\Rightarrow"),

            TextSpan(text: " 1u = $uEnMeVC2 "),

            buildTex2SvgInWidgetSpan(math: r"\frac{MeV}{c^2}", scale: 1.8),
          ],
        ),
      ),

      const SizedBox(height: 40),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            buildTex2SvgInWidgetSpan(math: r"\Rightarrow"),

            buildTex2SvgInWidgetSpan(math: r"1u \cdot c^2", offsetDy: -4.0),

            TextSpan(text: " = $uEnMeVC2 MeV"),
          ],
        ),
      ),

      const SizedBox(height: 40),

      transition(transition: "D'où"),

      const SizedBox(height: 40),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculEnergieDeLiaisonParNucleon3(
          eln: eln,
          Z: Z,
          mp: mp,
          A: A,
          mn: mn,
          masseNoyau: masseNoyau,
          uMeVC2: uEnMeVC2,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),
    ],
  );
}

Widget activiteInverse({
  String A = r"A",
  // ignore: non_constant_identifier_names
  String Ao = r"A_o",
  String lambda = r"\lambda",
  String t = r"t",
  String T = r"T",
  bool developpe = false,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathActiviteInverse(
      A: A,
      Ao: Ao,
      lambda: developpe ? r"\frac{ln2}{" + T + r"}" : lambda,
      t: t,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget calculTempsAvecAEtAo({
  String A = r"A",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String lambda = r"\lambda",
  String T = r"T",
  String t = r"t",
  bool developpe = false,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      activite(scale: scale),

      const SizedBox(height: 40),

      activiteInverse(entraineQue: entraineQue, scale: scale),

      const SizedBox(height: 40),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculTempsAvecXEtXo3(
          A: A,
          Ao: Ao,
          lambda: lambda,
          t: t,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 40),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculTempsAvecXEtXo4(
          A: A,
          Ao: Ao,
          lambda: lambda,
          t: t,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 40),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculTempsAvecXEtXo5(
          A: A,
          Ao: Ao,
          lambda: lambda,
          t: t,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 40),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculTempsAvecXEtXo6(
          A: A,
          Ao: Ao,
          lambda: lambda,
          t: t,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),
    ],
  );
}

// calculAoAvecALambdaTemps

Widget aoAvecALambdaTemps({
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String A = r"A",
  String lambda = r"\lambda",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathAoAvecALambdaTemps(
      A: A,
      Ao: Ao,
      t: t,
      lambda: lambda,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget calculAoAvecALambdaTemps({
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String A = r"A",
  String lambda = r"\lambda",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    children: [
      activite(scale: scale),

      const SizedBox(height: 40),

      activiteInverse(entraineQue: entraineQue, scale: scale),

      const SizedBox(height: 40),

      aoAvecALambdaTemps(
        A: A,
        Ao: Ao,
        lambda: lambda,
        t: t,
        entraineQue: entraineQue,
        bold: bold,
        scale: scale,
      ),
    ],
  );
}

// MasseAvecAMNaLambda-----------------------------------------------------------

Widget masseAvecAMNaLambdaEtapes({
  String lambda = r"\lambda",
  String m = r"m",
  String M = r"M",
  // ignore: non_constant_identifier_names
  String Na = r"\mathcal{N}",
  String A = r"A",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    children: [
      activite3(lambda: lambda, m: m, M: M, Na: Na, A: A, scale: 1.5),

      EspConstants.esp40,

      activite3Inverse(
        lambda: lambda,
        m: m,
        M: M,
        Na: Na,
        A: A,
        scale: 2.0,
        entraineQue: true,
      ),

      EspConstants.esp40,

      masseAvecAMNaLambdaEtape2(
        lambda: lambda,
        m: m,
        M: M,
        Na: Na,
        A: A,
        scale: 2.0,
        entraineQue: true,
      ),

      EspConstants.esp40,

      masseAvecAMNaLambda(
        lambda: lambda,
        m: m,
        M: M,
        Na: Na,
        A: A,
        scale: 3.0,
        entraineQue: true,
      ),
    ],
  );
}

Widget activite3Inverse({
  String lambda = r"\lambda",
  String m = r"m",
  String M = r"M",
  // ignore: non_constant_identifier_names
  String Na = r"\mathcal{N}",
  String A = r"A",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathActivite3Inverse(
      lambda: lambda,
      m: m,
      M: M,
      Na: Na,
      A: A,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget masseAvecAMNaLambdaEtape2({
  String lambda = r"\lambda",
  String m = r"m",
  String M = r"M",
  // ignore: non_constant_identifier_names
  String Na = r"\mathcal{N}",
  String A = r"A",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathMasseAvecAMNaLambdaEtape2(
      lambda: lambda,
      m: m,
      M: M,
      Na: Na,
      A: A,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

// MasseAvecAMNaTln2-----------------------------------------------------------------

Widget activite4Inverse({
  String m = r"m",
  String M = r"M",

  String T = r"T",
  String N = r"N",
  String A = r"A",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathActivite4Inverse(
      m: m,
      M: M,
      T: T,
      N: N,
      A: A,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget masseAvecAMNaTln2Etape2({
  String m = r"m",
  String M = r"M",

  String T = r"T",
  String N = r"N",
  String A = r"A",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathMasseAvecAMNaTln2Etape2(
      m: m,
      M: M,
      T: T,
      N: N,
      A: A,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}
