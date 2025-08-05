//builders.dart

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_tex/flutter_tex.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:scientiboost/core/constants/constants.dart';

void showSnackBar({
  required BuildContext context,
  required Widget content,
  Duration? duration,
  Color? backgroundColor,
  bool? showCloseIcon,
}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: content,
      duration: duration ?? const Duration(seconds: 5),
      showCloseIcon: showCloseIcon ?? true,
      backgroundColor: backgroundColor ?? Colors.blue,
    ),
  );
}

void scheduleShowSnackBar({
  required BuildContext context,
  required Widget content,
  Duration? duration,
  Color? backgroundColor,
  bool? showCloseIcon,
}) {
  SchedulerBinding.instance.addPostFrameCallback((_) {
    showSnackBar(
      context: context,
      content: content,
      duration: duration,
      backgroundColor: backgroundColor,
      showCloseIcon: showCloseIcon,
    );
  });
}

Widget result({
  required String leftTex2SvgMath,

  required String valueTex2SvgMath,

  String unitTex2SvgMath = r"",

  double scale = 1.0,

  bool wrap = false,

  double height = 1.5,
}) {
  final wrapCode = wrap ? r"\\" : r"";

  final math =
      // ignore: prefer_adjacent_string_concatenation
      r"\begin{array}{l}" +
      r"\mathbf{" +
      leftTex2SvgMath +
      r"}\ " +
      r"=\ " +
      wrapCode +
      r"\mathbf{" +
      valueTex2SvgMath +
      r"} \ " +
      r"\mathbf{" +
      unitTex2SvgMath +
      r"}" +
      r"\end{array}";
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,
        height: height,
        color: Colors.black,
      ),
      children: <InlineSpan>[
        buildTex2SvgInWidgetSpan(math: math, scale: scale),
      ],
    ),
  );
}

Widget transition({required String transition}) {
  return Text(
    transition,
    style: const TextStyle(
      fontSize: ExoConstants.fontSize,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget buildUnSignUpOrPasswordForgetOrSignInContent({
  required GoRouter router,
  required AuthState authState,
  required String question,
  required String routeText,
  required String route,
}) {
  if (authState is! Authenticated) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 16.0),
        children: <InlineSpan>[
          TextSpan(text: question),
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: GestureDetector(
              onTap: () {
                router.push(route);
              },
              child: Text(
                routeText,
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  } else {
    return SizedBox.shrink();
  }
}

WidgetSpan buildTex2SvgInWidgetSpan({
  required String math,
  double offsetDx = 0,
  double offsetDy = 0,
  double scale = 1.0,
}) {
  return WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: Transform.translate(
      offset: Offset(
        offsetDx,
        offsetDy,
      ), // Déplacement vertical (négatif = vers le haut)
      child: TeX2SVG(
        math: math,
        formulaWidgetBuilder: (context, svg) {
          double displayFontSize = ExoConstants.displayFontSize * scale;
          return SvgPicture.string(
            svg,
            height: displayFontSize,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          );
        },
      ),
    ),
  );
}

Widget tex({
  required String math,
  double offsetDx = 0,
  double offsetDy = 0,
  double scale = 1,
}) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      children: <InlineSpan>[
        buildTex2SvgInWidgetSpan(
          math: math,
          offsetDx: offsetDx,
          offsetDy: offsetDy,
          scale: scale,
        ),
      ],
    ),
  );
}

Widget regleDe3({
  required String part1,
  required String part2,
  required String part3,
  required String left,
  bool border = false,
  bool bold = false,
  bool entraineQue = false,
  bool wrap = false,
  double scale = 1.0,
}) {
  return tex(
    math: buildTex2SvgMathRegleDe3(
      part1: part1,
      part2: part2,
      part3: part3,
      left: left,
      wrap: wrap,
      border: border,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget sbTxt({required final String txt}) {
  final texte = Text(
    txt,
    style: const TextStyle(fontSize: ExoConstants.fontSize),
  );
  return texte;
}

//------------------TeXSVG-MATH-----------------------------------------

String buildTex2SvgMathRegleDe3({
  required String part1,
  required String part2,
  required String part3,
  required String left,
  bool border = false,
  bool bold = false,
  bool entraineQue = false,
  bool wrap = false,
}) {
  StringBuffer math = StringBuffer();

  if (entraineQue) {
    math.write(r" \Rightarrow ");
  }

  final wrapCode = wrap ? r"\\" : r"";

  // Utilisation d'un array à 3 colonnes de largeur égale
  math.write(r"\begin{array}{l} ");

  // Ligne 1
  math.write(part1);
  math.write(r"\ \ ");
  math.write(r" \longrightarrow ");
  math.write(r"\ \ ");
  math.write(part2);
  math.write(r" \\ ");

  // Ligne 2
  math.write(part3);
  math.write(r"\ \ ");
  math.write(r" \longrightarrow ");
  math.write(r"\ \ ");
  math.write(r" ? ");
  math.write(r" \\ ");
  math.write(r" \\ ");

  // Ligne 3 : calcul

  if (border) {
    math.write(r"\boxed{");
  }

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  math.write(left);
  math.write(r" = ");
  math.write(wrapCode);
  math.write(r"\displaystyle \frac{ ");
  math.write(part2);
  math.write(r" \cdot ");
  math.write(part3);
  math.write(r" }{ ");
  math.write(part1);
  math.write(r" } ");

  if (bold) {
    math.write(r" }");
  }

  if (border) {
    math.write(r" } ");
  }

  math.write(r"\end{array} ");

  return math.toString();
}
