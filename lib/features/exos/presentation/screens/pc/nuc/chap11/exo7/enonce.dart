import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo7Enonce extends ConsumerWidget {
  const PcNucChap11Exo7Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es en stage dans un laboratoire de radiochimie appliquée à la médecine nucléaire. Ton encadrant te demande d’examiner différents isotopes utilisés ou produits pour des diagnostics médicaux, des traitements, ou la recherche. Tu dois analyser leurs propriétés nucléaires pour déterminer leur composition et leur utilisation potentielle. \n",
        ),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              height: 2.0,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "On te donne la liste suivante de nucléides dont on ignore le symbole chimique : ",
              ),

              notationNoyau(X: r"X", Z: r"92", A: r"238"),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"X", Z: r"\ 8", A: r"16"),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"X", Z: r"\ 6", A: r"12"),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"X", Z: r"92", A: r"234"),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"X", Z: r"\ 8", A: r"18"),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"X", Z: r"42", A: r"98"),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"X", Z: r"6", A: r"13"),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"X", Z: r"92", A: r"235"),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"X", Z: r"27", A: r"60"),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"X", Z: r"\ 6", A: r"14"),

              const TextSpan(text: " \n \n "),
            ],
          ),
        ),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              height: 2.0,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "1) Donner la composition du noyau des nucléides suivants : ",
              ),

              notationNoyau(X: r"X", Z: r"92", A: r"238"),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"X", Z: r"\ 8", A: r"18"),

              const TextSpan(text: " \n \n "),
            ],
          ),
        ),

        sbTxt(txt: "2) Remplir le tableau suivant: \n"),

        Table(
          border: TableBorder.all(color: Colors.blue.shade200, width: 1.0),
          columnWidths: {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(1),
            2: FlexColumnWidth(1),
          },
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Nucléide'),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: ExoConstants.richTextFontSize,
                          height: 2.0,

                          color: Colors.black,
                        ),
                        children: <InlineSpan>[
                          notationNoyau(X: r"X", Z: r"6", A: r"12"),
                        ],
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: ExoConstants.richTextFontSize,
                          height: 2.0,

                          color: Colors.black,
                        ),
                        children: <InlineSpan>[
                          notationNoyau(X: r"X", Z: r"92", A: r"235"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(color: Colors.grey.shade50),
              children: [
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Isotopes'),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(''),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(''),
                  ),
                ),
              ],
            ),
          ],
        ),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              height: 2.0,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text: "\n \n 3) Calculer l'énergie de masse du nucléide: ",
              ),

              notationNoyau(X: r"X", Z: r"\ 8", A: r"16"),

              const TextSpan(text: " \n \n"),
            ],
          ),
        ),

        Donnees(),
      ],
    );
  }
}
