import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'correction1/correction1.dart';
import 'correction2/correction2.dart';
import 'correction3/correction3.dart';
import 'correction4/correction4.dart';

class PcNucChap12Exo7Correction extends ConsumerStatefulWidget {
  const PcNucChap12Exo7Correction({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcNucChap12Exo7CorrectionState();
}

class _PcNucChap12Exo7CorrectionState
    extends ConsumerState<PcNucChap12Exo7Correction> {
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
                "1) Écrivons l'équation de désintégration β⁻",
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
                "2) Calculons la période radioactive",
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
                "3) Calculons le temps",
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
        ExpansionPanelRadio(
          value: 'correction-4',
          canTapOnHeader: true,
          backgroundColor: Colors.white,
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                "4) Calculons le temps",
                style: TextStyle(
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
