import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details1 extends ConsumerStatefulWidget {
  const Details1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details1State();
}

class _Details1State extends ConsumerState<Details1> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          transition(
            transition:
                "Le nombre de masse peut être utilisé comme la valeur de la masse molaire en g/mol, d'où",
          ),

          SizedBox(height: 20),

          result(left: "M", value: "238", unit: "g/mol", bold: false),

          SizedBox(height: 20),

          transition(
            transition:
                "La masse molaire est en g/mol, donc la masse doit être convertie en g, d'où",
          ),

          SizedBox(height: 20),

          result(left: "m", value: "1000", unit: "g", bold: false),
        ],
      ),
    );
  }
}
