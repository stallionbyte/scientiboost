import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'correction1/correction1.dart';
import 'correction2/correction2.dart';
import 'correction3/correction3.dart';
import 'correction4/correction4.dart';

class PcMecaChap1Exo8Correction extends ConsumerStatefulWidget {
  const PcMecaChap1Exo8Correction({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcMecaChap1Exo8CorrectionState();
}

class _PcMecaChap1Exo8CorrectionState
    extends ConsumerState<PcMecaChap1Exo8Correction> {
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
                "1) le rayon orbitale",
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
                "2) l'équation horaire de la position angulaire ",
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
                "3) la vitesse linéaire",
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
                "4) l'accélération",
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
