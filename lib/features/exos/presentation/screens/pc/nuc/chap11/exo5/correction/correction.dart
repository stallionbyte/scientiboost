import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'correction1/correction1.dart';
import 'correction2/correction2.dart';

class PcNucChap11Exo5Correction extends ConsumerStatefulWidget {
  const PcNucChap11Exo5Correction({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcNucChap11Exo5CorrectionState();
}

class _PcNucChap11Exo5CorrectionState
    extends ConsumerState<PcNucChap11Exo5Correction> {
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
                "1) Défaut de masse",
                style: TextStyle(
                  fontSize: 18,
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
                "2) Énergie de liaison dans 1 kg",
                style: TextStyle(
                  fontSize: 18,
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
