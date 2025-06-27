import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/exos/presentation/viewmodels/exo_viewmodel.dart';
import '../../features/exams/presentation/viewmodels/exam_viewmodel.dart';

class ButtonExoExam extends ConsumerWidget {
  const ButtonExoExam({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.route_,
  });

  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;
  final String? route_;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exoState = ref.watch(exoViewmodelProvider);
    String? exoStateRoute;

    final examState = ref.watch(examViewmodelProvider);
    String? examStateRoute;

    if (exoState case ExoLoading(:final route)) {
      exoStateRoute = route;
    }

    if (examState case ExamLoading(:final route)) {
      examStateRoute = route;
    }

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
          Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
          SizedBox(width: 8), // Espacement entre texte et icône

          () {
            if ((exoStateRoute != null && exoStateRoute == route_) ||
                (examStateRoute != null && examStateRoute == route_)) {
              return CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2.5,
              );
            } else {
              return Icon(
                Icons.arrow_forward, // Flèche droite
                color: Colors.white,
                size: 20,
              );
            }
          }(),
        ],
      ),
    );
  }
}
