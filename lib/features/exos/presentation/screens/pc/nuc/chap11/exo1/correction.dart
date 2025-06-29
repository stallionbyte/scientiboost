import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tex/flutter_tex.dart';

import 'package:scientiboost/core/constants.dart';

import 'package:scientiboost/core/common_widgets/button_video.dart';

class PcNucChap11Exo1Correction extends ConsumerStatefulWidget {
  const PcNucChap11Exo1Correction({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcNucChap11Exo1CorrectionState();
}

class _PcNucChap11Exo1CorrectionState
    extends ConsumerState<PcNucChap11Exo1Correction> {
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList.radio(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.zero,
      children: [
        ExpansionPanelRadio(
          value: 'uniqueValue',
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                '1) question1 ...',
                style: TextStyle(
                  fontSize: CorrectionConstants.fontSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          },
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                ButtonVideo(
                  text: 'élement chimique',
                  videoRoute: VideoConstants.pathElementChimique,
                ),

                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: CorrectionConstants.fontSize,
                      color: Colors.black,
                    ),
                    children: <InlineSpan>[
                      const TextSpan(text: "texte.. "),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: TeX2SVG(
                          math: r"_{4}^{9}He",
                          formulaWidgetBuilder: (context, svg) {
                            double displayFontSize =
                                CorrectionConstants.displayFontSize;
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
            ),
          ),
        ),
      ],
    );
  }
}
