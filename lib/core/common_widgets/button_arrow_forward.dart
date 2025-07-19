import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/providers/providers.dart';

class ButtonArrowForward extends ConsumerWidget {
  const ButtonArrowForward({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.route,
  });

  final VoidCallback? onPressed;
  final String text;
  final Color? backgroundColor;
  final String? route;

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
      onPressed:
          onPressed ??
          () {
            ref.read(goRouterProvider).push(route as String);
          },
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
