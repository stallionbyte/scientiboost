import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import 'package:scientiboost/core/constants.dart';

class PhyNucLatexContants {
  static const String masseProtonEnUValue = "1,007276";
  static const String masseNeutronEnUValue = "1,008665";

  static WidgetSpan delta = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: Transform.translate(
      offset: const Offset(
        0,
        -3.0,
      ), // Déplacement vertical (négatif = vers le haut)
      child: TeX2SVG(
        math: r"\Delta",
        formulaWidgetBuilder: (context, svg) {
          double displayFontSize = ExoConstants.richTextFontSize;
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

  static WidgetSpan c2 = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: Transform.translate(
      offset: const Offset(
        0,
        0,
      ), // Déplacement vertical (négatif = vers le haut)
      child: TeX2SVG(
        math: r"c^2",
        formulaWidgetBuilder: (context, svg) {
          double displayFontSize = ExoConstants.richTextFontSize;
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

  static WidgetSpan eln = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: Transform.translate(
      offset: const Offset(
        0,
        -3.0,
      ), // Déplacement vertical (négatif = vers le haut)
      child: TeX2SVG(
        math: r"E_{l/nuc}",
        formulaWidgetBuilder: (context, svg) {
          double displayFontSize = ExoConstants.richTextFontSize;
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

  static WidgetSpan elnBold = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: Transform.translate(
      offset: const Offset(
        0,
        -3.0,
      ), // Déplacement vertical (négatif = vers le haut)
      child: TeX2SVG(
        math: r"\mathbf{E_{l/nuc}}",
        formulaWidgetBuilder: (context, svg) {
          double displayFontSize = ExoConstants.richTextFontSize;
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

  static WidgetSpan mn = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: Transform.translate(
      offset: const Offset(
        0,
        5.0,
      ), // Déplacement vertical (négatif = vers le haut)
      child: TeX2SVG(
        math: r"m_n",
        formulaWidgetBuilder: (context, svg) {
          double displayFontSize = ExoConstants.richTextFontSize;
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

  static WidgetSpan mp = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: Transform.translate(
      offset: const Offset(
        0,
        5.0,
      ), // Déplacement vertical (négatif = vers le haut)
      child: TeX2SVG(
        math: r"m_p",
        formulaWidgetBuilder: (context, svg) {
          double displayFontSize = ExoConstants.richTextFontSize;
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

  static WidgetSpan mevc2 = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"\text{MeV}/c^2",
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
  );

  static WidgetSpan mevc2Bold = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"\mathbf{\text{MeV}/c^2}",
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
  );

  static WidgetSpan notationNoyau = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"_{Z}^{A}X",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan carbone12 = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"_{\ 6}^{12}C",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan carbone12Bold = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"\mathbf{_{\ 6}^{12}C}",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan carbone14 = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"_{\ 6}^{14}C",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan carbone14Bold = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"\mathbf{_{\ 6}^{14}C}",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan uranium235 = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"_{\ 92}^{235}U",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan uranium235Bold = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"\mathbf{_{\ 92}^{235}U}",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan fer56 = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"_{\ 26}^{56}Fe",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan fer56Bold = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"\mathbf{_{\ 26}^{56}Fe}",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );
}
