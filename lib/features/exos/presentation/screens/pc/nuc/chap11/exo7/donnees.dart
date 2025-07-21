import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/constants/constants.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Données:",
          style: const TextStyle(
            fontSize: ExoConstants.fontSize,

            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 20),

        PhyNucDonneesConstants.mp,

        const SizedBox(height: 20),

        PhyNucDonneesConstants.mn,

        const SizedBox(height: 20),

        PhyNucDonneesConstants.uEnMeVC2,

        const SizedBox(height: 20),

        PhyNucDonneesConstants.masseCl35EnU,

        const SizedBox(height: 20),

        PhyNucDonneesConstants.masseCl36EnU,

        const SizedBox(height: 20),

        PhyNucDonneesConstants.masseCl37EnU,

        const SizedBox(height: 20),

        Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
                Center(
                  child: Text(
                    'Isotopes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                Center(
                  child: Text(
                    'Z',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    'N',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    'A',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Center(child: Text('Chlore-35')),

                Center(child: Text('17')),
                Center(child: Text('18')),
                Center(child: Text('35')),
              ],
            ),
            TableRow(
              children: [
                Center(child: Text('Chlore-36')),

                Center(child: Text('17')),
                Center(child: Text('19')),
                Center(child: Text('36')),
              ],
            ),
            TableRow(
              children: [
                Center(child: Text('Chlore-37')),

                Center(child: Text('17')),
                Center(child: Text('20')),
                Center(child: Text('37')),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
