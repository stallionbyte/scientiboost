import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/exos/presentation/viewmodels/exo_viewmodel.dart';

class ButtonExo extends ConsumerWidget {
  const ButtonExo({
    super.key,
    required this.num,
    required this.onPressed,
    this.backgroundColor,
  });

  final VoidCallback onPressed;
  final int num;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(exoViewmodelProvider);
    final exoState = ref.read(exoViewmodelProvider);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Fond bleu
        foregroundColor: Colors.white, // Texte et icône blancs
        padding: const EdgeInsets.all(16.0), // Espacement interne
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18), // Coins arrondis
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min, // Ajuste la taille du Row au contenu
        children: [
          Text(
            'Exercice $num',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(width: 8), // Espacement entre texte et icône
          Icon(
            Icons.arrow_forward, // Flèche droite
            color: Colors.white,
            size: 20,
          ),

          if (exoState case ExoLoading())
            CircularProgressIndicator(color: Colors.white, strokeWidth: 2.5),
        ],
      ),
    );
  }
}
