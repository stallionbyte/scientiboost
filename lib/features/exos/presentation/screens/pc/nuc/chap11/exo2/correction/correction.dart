import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/constants.dart';

import 'correction1/correction1.dart'; // Will need to create PcNucChap11Exo2Correction1
import 'correction2/correction2.dart'; // Will need to create PcNucChap11Exo2Correction2
import 'correction3/correction3.dart'; // Will need to create PcNucChap11Exo2Correction3

class PcNucChap11Exo2Correction extends ConsumerStatefulWidget {
  const PcNucChap11Exo2Correction({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcNucChap11Exo2CorrectionState();
}

class _PcNucChap11Exo2CorrectionState
    extends ConsumerState<PcNucChap11Exo2Correction> {
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList.radio(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.zero,
      expandIconColor: Colors.black,
      children: [
        ExpansionPanelRadio(
          value: 'correction-1',
          canTapOnHeader: true,
          backgroundColor: Colors.white,
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                "1) Tableau comparatif", // Updated title
                style: TextStyle(
                  fontSize: ExoConstants.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
          body: PcNucChap11Exo2Correction1(), // Placeholder for actual correction widget
        ),
        ExpansionPanelRadio(
          value: 'correction-2',
          canTapOnHeader: true,
          backgroundColor: Colors.white,
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                "2) Énergie de liaison de chlore-35", // Updated title
                style: TextStyle(
                  fontSize: ExoConstants.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
          body: PcNucChap11Exo2Correction2(), // Placeholder for actual correction widget
        ),
        ExpansionPanelRadio(
          value: 'correction-3',
          canTapOnHeader: true,
          backgroundColor: Colors.white,
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                "3) Explication de l'élément chimique", // Updated title
                style: TextStyle(
                  fontSize: ExoConstants.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
          body: PcNucChap11Exo2Correction3(), // Placeholder for actual correction widget
        ),
      ],
    );
  }
}
