import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tex/flutter_tex.dart';

class PcBacD2024ChimExo1Correction extends ConsumerStatefulWidget {
  const PcBacD2024ChimExo1Correction({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcBacD2024ChimExo1CorrectionState();
}

class _PcBacD2024ChimExo1CorrectionState
    extends ConsumerState<PcBacD2024ChimExo1Correction> {
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList.radio(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.zero,
      children: [
        ExpansionPanelRadio(
          value: 'uniqueValue',
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                '1) question1',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            );
          },
          body: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
        ),

        ExpansionPanelRadio(
          value: 'uniqueValue2',
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                '1) question1',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            );
          },
          body: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
                Text('contenu question 1...', style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
