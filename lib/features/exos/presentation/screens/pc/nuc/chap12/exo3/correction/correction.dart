import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'correction1/correction1.dart';
import 'correction2/correction2.dart';
import 'correction3/correction3.dart';

class PcNucChap12Exo3Correction extends ConsumerStatefulWidget {
  const PcNucChap12Exo3Correction({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcNucChap12Exo3CorrectionState();
}

class _PcNucChap12Exo3CorrectionState
    extends ConsumerState<PcNucChap12Exo3Correction> {
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList.radio(
      elevation: 1,

      expandIconColor: Colors.blue,

      expandedHeaderPadding: EdgeInsets.zero,
      children: [
        ExpansionPanelRadio(
          value: 'correction-1',
          canTapOnHeader: true,
          backgroundColor: Colors.white,

          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                '1) Écrivons l\'équation de la désintégration',

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
                '2) Calculons l\'énergie libérée',

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
                '3) Calculer l\'énergie libérée',

                style: TextStyle(
                  fontSize: ExoConstants.fontSize,
                  fontWeight: FontWeight.bold,
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
