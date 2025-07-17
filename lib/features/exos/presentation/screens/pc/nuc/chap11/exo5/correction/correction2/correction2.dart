import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';
import 'details/details1.dart';

class Correction2 extends ConsumerStatefulWidget {
  const Correction2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction2State();
}

class _Correction2State extends ConsumerState<Correction2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          transition(
            transition: "Energie de liaison d'un noyau de plutonium-238",
          ),
          SizedBox(height: 20),

          energieDeLiaisonAvecDefautDeMase(scale: 1.5),

          SizedBox(height: 20),

          transition(transition: "AN:"),

          SizedBox(height: 20),

          result(
            leftRich: PhyNucConstants.el,
            value: r"1,88 . " + PhyNucValuesConstants.uEnMeVC2,
            unit: "MeV",
            bold: false,
          ),

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              leftRich: PhyNucConstants.el,
              value: "1751,22",
              unit: "MeV",
              bold: false,
            ),
            color: Colors.black,
          ),

          SizedBox(height: 20),

          transition(transition: "Nombre de noyaux de plutonium-238 dans 1 kg"),

          SizedBox(height: 20),

          nombreDeNoyauAvecMasse(scale: 2.0),

          SizedBox(height: 20),

          transition(transition: "AN"),

          SizedBox(height: 20),

          nombreDeNoyauAvecMasse(
            m: r"1000",
            avogadro: PhyNucValuesConstants.nombreAvogadroMath,
            M: r"238",
            scale: 2.0,
          ),

          SizedBox(height: 20),

          Details1(),

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              left: "N",
              valueRichs: valueWithExp(value: "2,5294", expo: r"24"),
              unit: "noyaux",
              bold: false,
            ),
            color: Colors.black,
          ),

          SizedBox(height: 20),

          transition(
            transition: "Energie de liaison totale dans 1 kg de plutonium-238",
          ),

          SizedBox(height: 20),

          result(
            leftRich: buildEnergieDeliaisonTotaleLeft(),
            valueRichs: buildEnergieDeliaisonTotaleValueRichs(),
          ),

          SizedBox(height: 20),

          transition(transition: "AN"),

          SizedBox(height: 20),

          result(
            leftRich: buildEnergieDeliaisonTotaleLeft(),
            valueRichs: buildEnergieDeliaisonTotaleValueRichs2(),
          ),

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              leftRich: buildEnergieDeliaisonTotaleLeftBold(),
              valueRichs: valueWithExp(
                value: "4,4295",
                expo: r"27",
                bold: true,
              ),
              unit: "MeV",
            ),
          ),

          SizedBox(height: 40),
        ],
      ),
    );
  }

  WidgetSpan buildEnergieDeliaisonTotaleLeft() {
    return buildTex2SvgInWidgetSpan(math: r"E_{l/totale}");
  }

  WidgetSpan buildEnergieDeliaisonTotaleLeftBold() {
    return buildTex2SvgInWidgetSpan(math: r"\mathbf{E_{l/totale}}");
  }

  List<InlineSpan> buildEnergieDeliaisonTotaleValueRichs2() {
    return <InlineSpan>[
      ...valueWithExp(value: "2,5294", expo: r"24"),
      const TextSpan(text: " . "),

      const TextSpan(text: "1751,22"),
    ];
  }

  List<InlineSpan> buildEnergieDeliaisonTotaleValueRichs() {
    return <InlineSpan>[
      const TextSpan(text: "nombre de noyaux . "),
      buildTex2SvgInWidgetSpan(math: r"E_l"),
      const TextSpan(text: " d'un nouyau"),
    ];
  }
}
