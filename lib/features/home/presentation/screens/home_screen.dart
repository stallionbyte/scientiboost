import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/datasources/remote/remote_data_sevices.dart';

import '../../../video/presentation/screens/video_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supabase = RemoteDataServices.instance.supabase;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20),

        ClipRRect(
          borderRadius: BorderRadius.circular(20.0), // Rayon des coins
          child: Image.asset(
            'assets/img/eleve-scientific.png',
            width:
                MediaQuery.of(context).size.width *
                0.8, // 80% de la largeur de l'écran
            fit: BoxFit.contain, // Maintenir les proportions
          ),
        ),

        SizedBox(height: 40),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle_outline, color: Colors.blue, size: 30),
            SizedBox(width: 20),
            RichText(
              text: TextSpan(
                children: const <TextSpan>[
                  TextSpan(
                    text: 'PC: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: '20/20',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: const <TextSpan>[
                  TextSpan(
                    text: 'SVT: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: '20/20',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(
          '(bientot)',
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),

        SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: const <TextSpan>[
                  TextSpan(
                    text: 'MATH: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: '20/20',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(
          '(bientot)',
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),

        SizedBox(height: 40),

        Row(
          children: [
            SizedBox(width: 20),
            Icon(Icons.check_circle_outline, color: Colors.blue),
            const SizedBox(width: 10),

            // Envelopper Text dans un Expanded
            Text(
              'Videos explicatives',
              style: const TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ],
        ),

        Row(
          children: [
            SizedBox(width: 20),
            Icon(Icons.check_circle_outline, color: Colors.blue),
            const SizedBox(width: 10),

            // Envelopper Text dans un Expanded
            Text(
              'Exercices corrigés',
              style: const TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ],
        ),

        Row(
          children: [
            SizedBox(width: 20),
            Icon(Icons.check_circle_outline, color: Colors.blue),
            const SizedBox(width: 10),

            Expanded(
              child: Text(
                "Sujets d'examen corrigés",
                style: const TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ),
          ],
        ),

        Row(
          children: [
            SizedBox(width: 20),
            Icon(Icons.check_circle_outline, color: Colors.blue),
            const SizedBox(width: 10),

            // Envelopper Text dans un Expanded
            Text(
              "Receuil de formules",
              style: const TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ],
        ),

        Row(
          children: [
            SizedBox(width: 20),
            Icon(Icons.check_circle_outline, color: Colors.blue),
            const SizedBox(width: 10),

            // Envelopper Text dans un Expanded
            Text(
              "Astuces",
              style: const TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ],
        ),

        SizedBox(height: 40),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Exemple de video",
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),

        SizedBox(height: 20),

        VideoPlayerScreen(
          supabase: supabase,
          bucket: 'pc',
          name: 'element_chimique.mp4',
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Elément chimique",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
