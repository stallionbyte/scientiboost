import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransitionConstants.donnees,

        EspConstants.esp20,

        PhyNucDonneesConstants.mp,

        EspConstants.esp20,

        PhyNucDonneesConstants.mn,

        EspConstants.esp20,

        PhyNucDonneesConstants.uEnMeVC2,

        EspConstants.esp20,

        PhyNucDonneesConstants.masseCl35EnU,

        EspConstants.esp20,

        PhyNucDonneesConstants.masseCl36EnU,

        EspConstants.esp20,

        PhyNucDonneesConstants.masseCl37EnU,

        EspConstants.esp20,

        Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
                Center(child: sbTxt(txt: 'Isotopes')),
                Center(child: sbTxt(txt: 'Z')),
                Center(child: sbTxt(txt: 'N')),
                Center(child: sbTxt(txt: 'A')),
              ],
            ),
            TableRow(
              children: [
                Center(child: sbTxt(txt: 'Chlore-35')),
                Center(child: sbTxt(txt: '17')),
                Center(child: sbTxt(txt: '18')),
                Center(child: sbTxt(txt: '35')),
              ],
            ),
            TableRow(
              children: [
                Center(child: sbTxt(txt: 'Chlore-36')),
                Center(child: sbTxt(txt: '17')),
                Center(child: sbTxt(txt: '19')),
                Center(child: sbTxt(txt: '36')),
              ],
            ),
            TableRow(
              children: [
                Center(child: sbTxt(txt: 'Chlore-37')),
                Center(child: sbTxt(txt: '17')),
                Center(child: sbTxt(txt: '20')),
                Center(child: sbTxt(txt: '37')),
              ],
            ),
          ],
        ),
        EspConstants.esp20,
      ],
    );
  }
}
