import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'correction1/correction1.dart';
import 'correction2/correction2.dart';

class PcNucChap11Exo8Correction extends ConsumerStatefulWidget {
  const PcNucChap11Exo8Correction({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcNucChap11Exo8CorrectionState();
}

class _PcNucChap11Exo8CorrectionState
    extends ConsumerState<PcNucChap11Exo8Correction> {
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
                '1) Calculons l\'énergie de liaison par nucléon',

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
                '2) Calculons la masse d\'un noyau',

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
      ],
    );
  }
}
