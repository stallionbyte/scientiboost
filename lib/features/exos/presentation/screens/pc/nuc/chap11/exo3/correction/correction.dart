import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'correction1/correction1.dart';
import 'correction2/correction2.dart';
import 'correction3/correction3.dart';

class PcNucChap11Exo3Correction extends ConsumerStatefulWidget {
  const PcNucChap11Exo3Correction({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcNucChap11Exo3CorrectionState();
}

class _PcNucChap11Exo3CorrectionState
    extends ConsumerState<PcNucChap11Exo3Correction> {
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
                "1) Calculons le défaut de masse du noyau de molybdène-98",
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
                '2) Déduisons l\'énergie de liaison',

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
                "3) Calculons l'énergie de liaison par nucléon",
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
      ],
    );
  }
}
