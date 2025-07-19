import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/providers/providers.dart';

class ButtonVideo extends ConsumerWidget {
  const ButtonVideo({
    super.key,
    required this.text,
    required this.videoRoute,
    this.backgroundColor,
  });

  final String videoRoute;
  final String text;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.blue, // Fond bleu
        foregroundColor: Colors.white, // Texte et icône blancs
        padding: const EdgeInsets.all(8), // Espacement interne
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18), // Coins arrondis
        ),
      ),
      onPressed: () async {
        ref.read(goRouterProvider).push(videoRoute);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min, // Ajuste la taille du Row au contenu
        children: [
          Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
          SizedBox(width: 8), // Espacement entre texte et icône

          Icon(Icons.play_circle_fill, color: Colors.white, size: 30),

          SizedBox(width: 8),

          Icon(
            Icons.arrow_forward, // Flèche droite
            color: Colors.white,
            size: 20,
          ),
        ],
      ),
    );
  }
}
