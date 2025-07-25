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

List<InlineSpan> valueWithExp({
  required String value,
  required String expo,
  bool bold = false,
}) {
  return <InlineSpan>[
    TextSpan(
      text: value,
      style: TextStyle(fontWeight: bold ? FontWeight.bold : FontWeight.normal),
    ),
    TextSpan(
      text: " . ",
      style: TextStyle(fontWeight: bold ? FontWeight.bold : FontWeight.normal),
    ),
    exp(exp: expo, bold: bold),
  ];
}

Widget result({
  WidgetSpan? leftRich,
  List<InlineSpan>? leftRichs,
  String? value,
  String? valueTex2SvgMath,
  double valueTex2SvgMathScale = 1.0,
  List<InlineSpan>? valueRichs,
  WidgetSpan? valueRich,
  WidgetSpan? unitRich,
  String? left,
  String? unit,
  bool bold = true,

  double height = 1.5,
}) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,
        height: height,
        color: Colors.black,
      ),
      children: <InlineSpan>[
        if (leftRich != null) leftRich,

        if (leftRichs != null) ...leftRichs,

        if (left != null)
          TextSpan(
            text: left,
            style: TextStyle(
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            ),
          ),

        TextSpan(
          text: " = ",
          style: TextStyle(
            fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          ),
        ),

        if (valueRichs != null) ...valueRichs,

        if (valueRich != null) valueRich,

        if (valueTex2SvgMath != null)
          buildTex2SvgInWidgetSpan(
            math:
                bold ? r"\mathbf{" + valueTex2SvgMath + r"}" : valueTex2SvgMath,
            scale: valueTex2SvgMathScale,
          ),

        if (value != null)
          TextSpan(
            text: "$value ",
            style: TextStyle(
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            ),
          ),

        if (unitRich != null) unitRich,

        if (unit != null)
          TextSpan(
            text: " $unit",
            style: TextStyle(
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
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

String buildTex2SvgMath10ExpX({required String exp, bool bold = false}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  math.write(r" 10 ^ {");

  math.write(exp);

  math.write(r" } ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

WidgetSpan exp({required String exp, bool bold = false}) {
  return buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMath10ExpX(exp: exp, bold: bold),
    offsetDy: -2,
    scale: 0.8,
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

Widget buildTex2SvgInRichText({
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
