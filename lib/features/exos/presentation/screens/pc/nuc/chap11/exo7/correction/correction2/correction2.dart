import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/builders.dart';

class Correction2 extends ConsumerStatefulWidget {
  const Correction2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction2State();
}

class _Correction2State extends ConsumerState<Correction2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

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
                      child: Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: ExoConstants.richTextFontSize,
                                height: 2.0,

                                color: Colors.black,
                              ),
                              children: <InlineSpan>[
                                notationNoyau(X: r"X", Z: r"\ 6", A: r"13"),
                              ],
                            ),
                          ),

                          SizedBox(height: 2.0),

                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: ExoConstants.richTextFontSize,
                                height: 2.0,

                                color: Colors.black,
                              ),
                              children: <InlineSpan>[
                                notationNoyau(X: r"X", Z: r"\ 6", A: r"14"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: ExoConstants.richTextFontSize,
                                height: 2.0,

                                color: Colors.black,
                              ),
                              children: <InlineSpan>[
                                notationNoyau(X: r"X", Z: r"\ 92", A: r"234"),
                              ],
                            ),
                          ),

                          SizedBox(height: 2.0),

                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: ExoConstants.richTextFontSize,
                                height: 2.0,

                                color: Colors.black,
                              ),
                              children: <InlineSpan>[
                                notationNoyau(X: r"X", Z: r"\ 92", A: r"238"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
