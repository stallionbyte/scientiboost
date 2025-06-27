import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:scientiboost/core/constants.dart';

class PcNucChap11Exo1Enonce extends ConsumerWidget {
  const PcNucChap11Exo1Enonce({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: EnonceConstants.fontSize,
              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "texte.. "),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: TeX2SVG(
                  math: r"_{4}^{9}He",
                  formulaWidgetBuilder: (context, svg) {
                    double displayFontSize = EnonceConstants.displayFontSize;
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
        ),
      ],
    );
  }
}
