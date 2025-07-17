import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
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
        ),

        SizedBox(height: 20),

        if (showDetails) ...[
          Divider(color: Colors.blue),
          SizedBox(height: 20),
          widget.details,
          SizedBox(height: 20),
          Divider(color: Colors.blue),
        ],
      ],
    );
  }
}
