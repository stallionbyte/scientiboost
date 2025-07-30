import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dotted_border/dotted_border.dart';

import 'package:scientiboost/core/constants/constants.dart';

class DetailsHandler extends ConsumerStatefulWidget {
  const DetailsHandler({super.key, required this.details});

  final Widget details;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DetailsHandlerState();
}

class _DetailsHandlerState extends ConsumerState<DetailsHandler> {
  bool showDetails = false;

  @override
  Widget build(BuildContext context) {
    final showButton = ElevatedButton(
      onPressed: () {
        setState(() {
          showDetails = !showDetails; // Mise à jour locale
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Fond bleu
        foregroundColor: Colors.white, // Texte et icône blancs
        padding: const EdgeInsets.all(12.0), // Espacement interne
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18), // Coins arrondis
        ),
      ),
      child: Text(
        showDetails ? 'Masquer détails' : 'Voir détails',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EspConstants.esp20,

        showButton,

        EspConstants.esp40,

        if (showDetails) ...[
          DottedBorder(
            options: RoundedRectDottedBorderOptions(
              radius: Radius.circular(4.0),
              color: Colors.blue,
              dashPattern: [10, 5],
              strokeWidth: 2,
              padding: EdgeInsets.all(16),
            ),
            child: Column(
              children: [widget.details, EspConstants.esp40, showButton],
            ),
          ),

          EspConstants.esp40,
        ],
      ],
    );
  }
}
