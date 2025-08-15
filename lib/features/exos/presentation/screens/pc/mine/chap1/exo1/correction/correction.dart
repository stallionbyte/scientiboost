import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'correction1/correction1.dart';
import 'correction2/correction2.dart';
import 'correction3/correction3.dart';
import 'correction4/correction4.dart';
import 'correction5/correction5.dart';

class PcMineChap1Exo1Correction extends ConsumerStatefulWidget {
  const PcMineChap1Exo1Correction({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcMineChap1Exo1CorrectionState();
}

class _PcMineChap1Exo1CorrectionState
    extends ConsumerState<PcMineChap1Exo1Correction> {
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
                "1) la concentration molaire de la solution S1",
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
                "2) les concentrations molaires de tous les ions",
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
                "3) la concentration molaire de la solution S2",
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
                "4) les concentrations molaires de tous les ions",
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

        ExpansionPanelRadio(
          value: 'correction-5',
          canTapOnHeader: true,
          backgroundColor: Colors.white,
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                "5) la concentration molaire des ions sulfate",
                style: TextStyle(
                  fontSize: ExoConstants.fontSize,
                  fontWeight: FontWeight.bold,
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
