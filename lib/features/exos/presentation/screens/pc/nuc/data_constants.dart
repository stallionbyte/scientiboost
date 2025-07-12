import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import 'package:scientiboost/core/constants.dart';

class DonneesPhyNucLatexConstants {
  static double scale = 1.2;
  static const String masseU235EnUValue = "235,0439";
  static const String masseFe56EnUValue = "55,934936";
  static const String uEnMeVC2Value = "931,5";

  static Widget uEnMeVC2 = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      children: <InlineSpan>[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TeX2SVG(
            math: r"1u = 931,5 \text{MeV}/c^2",

            formulaWidgetBuilder: (context, svg) {
              double displayFontSize = ExoConstants.displayFontSize * scale;
              return SvgPicture.string(
                svg,
                height: displayFontSize,
                width: displayFontSize,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              );
            },
          ),
        ),
      ],
    ),
  );

  static Widget mp = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,

        color: Colors.black,
      ),
      children: <InlineSpan>[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TeX2SVG(
            math: r"m_p = 1,007276u",

            formulaWidgetBuilder: (context, svg) {
              double displayFontSize = ExoConstants.displayFontSize;
              return SvgPicture.string(
                svg,
                height: displayFontSize,
                width: displayFontSize,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              );
            },
          ),
        ),
      ],
    ),
  );

  static Widget mn = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,

        color: Colors.black,
      ),
      children: <InlineSpan>[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TeX2SVG(
            math: r"m_n = 1,008665u",

            formulaWidgetBuilder: (context, svg) {
              double displayFontSize = ExoConstants.displayFontSize;
              return SvgPicture.string(
                svg,
                height: displayFontSize,
                width: displayFontSize,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              );
            },
          ),
        ),
      ],
    ),
  );

  static Widget masseC14EnU = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,

        color: Colors.black,
      ),
      children: <InlineSpan>[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TeX2SVG(
            math: r"m(_{\ 6}^{14}C) = 14,003242u",

            formulaWidgetBuilder: (context, svg) {
              double displayFontSize = ExoConstants.displayFontSize * scale;
              return SvgPicture.string(
                svg,
                height: displayFontSize,
                width: displayFontSize,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              );
            },
          ),
        ),
      ],
    ),
  );

  static Widget masseU235EnU = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,

        color: Colors.black,
      ),
      children: <InlineSpan>[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TeX2SVG(
            math: r"m(_{\ 92}^{235}U) = 235,0439u",

            formulaWidgetBuilder: (context, svg) {
              double displayFontSize = ExoConstants.displayFontSize * scale;
              return SvgPicture.string(
                svg,
                height: displayFontSize,
                width: displayFontSize,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              );
            },
          ),
        ),
      ],
    ),
  );

  static Widget masseFe56EnU = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,

        color: Colors.black,
      ),
      children: <InlineSpan>[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TeX2SVG(
            math: r"m(_{\ 26}^{96}Fe) = 55,934936u",

            formulaWidgetBuilder: (context, svg) {
              double displayFontSize = ExoConstants.displayFontSize * scale;
              return SvgPicture.string(
                svg,
                height: displayFontSize,
                width: displayFontSize,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              );
            },
          ),
        ),
      ],
    ),
  );
}
