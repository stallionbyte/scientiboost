import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'correction1/correction1.dart';
import 'correction2/correction2.dart';
import 'correction3/correction3.dart';
import 'correction4/correction4.dart';

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
      expandIconColor: Colors.blue,

      children: [
        ExpansionPanelRadio(
          value: 'correction-1',
          canTapOnHeader: true,
          backgroundColor: Colors.white,
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                "1) La masse totale de l'atome",
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
                '2) Calculons la masse du noyau',

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
                "3) Comparaison et conclusion",
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
              title: Text(
                "4) Calculons le défaut de masse",
                style: const TextStyle(
                  fontSize: ExoConstants.fontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            );
          },

          body: Correction4(),
        ),
      ],
    );
  }
}
