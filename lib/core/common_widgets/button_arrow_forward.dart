import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

class ButtonArrowForward extends ConsumerWidget {
  const ButtonArrowForward({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
  });

  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(goRouterProvider);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.blue, // Fond bleu
        foregroundColor: Colors.white, // Texte et icône blancs
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          //vertical: 12,
        ), // Espacement interne
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18), // Coins arrondis
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min, // Ajuste la taille du Row au contenu
        children: [
          Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
          SizedBox(width: 8), // Espacement entre texte et icône
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
