import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/constants.dart';

class PcNucChap11Exo2Correction1 extends ConsumerStatefulWidget {
  const PcNucChap11Exo2Correction1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcNucChap11Exo2Correction1State();
}

class _PcNucChap11Exo2Correction1State
    extends ConsumerState<PcNucChap11Exo2Correction1> {
  @override
  Widget build(BuildContext context) {
    final cellStyle = TextStyle(fontSize: ExoConstants.fontSize);
    final headerStyle = TextStyle(
        fontSize: ExoConstants.fontSize, fontWeight: FontWeight.bold);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tableau comparatif de la composition nucléaire des isotopes du chlore:",
            style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Table(
            border: TableBorder.all(color: Colors.grey),
            columnWidths: const <int, TableColumnWidth>{
              0: FlexColumnWidth(),
              1: IntrinsicColumnWidth(),
              2: IntrinsicColumnWidth(),
              3: IntrinsicColumnWidth(),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: <TableRow>[
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[200]),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Isotope', style: headerStyle, textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Protons (Z)', style: headerStyle, textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Neutrons (N)', style: headerStyle, textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Nucléons (A)', style: headerStyle, textAlign: TextAlign.center),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(textAlign: TextAlign.center, text: TextSpan(style: cellStyle, children: [PhyNucLatexContants.chlore35])),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('17', style: cellStyle, textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('18', style: cellStyle, textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('35', style: cellStyle, textAlign: TextAlign.center),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(textAlign: TextAlign.center, text: TextSpan(style: cellStyle, children: [PhyNucLatexContants.chlore36])),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('17', style: cellStyle, textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('19', style: cellStyle, textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('36', style: cellStyle, textAlign: TextAlign.center),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(textAlign: TextAlign.center, text: TextSpan(style: cellStyle, children: [PhyNucLatexContants.chlore37])),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('17', style: cellStyle, textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('20', style: cellStyle, textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('37', style: cellStyle, textAlign: TextAlign.center),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
