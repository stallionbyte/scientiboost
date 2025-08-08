import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'correction1/correction1.dart';
import 'correction2/correction2.dart';
import 'correction3/correction3.dart';
import 'correction4/correction4.dart';
import 'correction5/correction5.dart';

class PcNucChap12Exo2Correction extends ConsumerStatefulWidget {
  const PcNucChap12Exo2Correction({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcNucChap12Exo2CorrectionState();
}

class _PcNucChap12Exo2CorrectionState
    extends ConsumerState<PcNucChap12Exo2Correction> {
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList.radio(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.zero,
      expandIconColor: Colors.blue,

      children: [
        ExpansionPanelRadio(
          value: 'correction-1',
          canTapOnHeader: true,
          backgroundColor: Colors.white,
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                "1) Désintégration β⁻ de l'iode-131",
                style: TextStyle(
                  fontSize: ExoConstants.fontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            );
          },
          body: Correction1(),
        ),

        ExpansionPanelRadio(
          value: 'correction-2',
          canTapOnHeader: true,

          backgroundColor: Colors.white,

          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                '2) Calculons la constante radioactive λ',

                style: TextStyle(
                  fontSize: ExoConstants.fontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            );
          },

          body: Correction2(),
        ),

        ExpansionPanelRadio(
          value: 'correction-3',
          canTapOnHeader: true,

          backgroundColor: Colors.white,

          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                "3) Temps pour atteindre le seuil de sécurité",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: ExoConstants.fontSize,
                  color: Colors.blue,
                ),
              ),
            );
          },

          body: Correction3(),
        ),

        ExpansionPanelRadio(
          value: 'correction-4',
          canTapOnHeader: true,

          backgroundColor: Colors.white,

          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                "4) Calculons le temps",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: ExoConstants.fontSize,
                  color: Colors.blue,
                ),
              ),
            );
          },

          body: Correction4(),
        ),

        ExpansionPanelRadio(
          value: 'correction-5',
          canTapOnHeader: true,

          backgroundColor: Colors.white,

          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                "5) Calculons l'énergie",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: ExoConstants.fontSize,
                  color: Colors.blue,
                ),
              ),
            );
          },

          body: Correction5(),
        ),
      ],
    );
  }
}
