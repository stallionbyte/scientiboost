import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers.dart';
import '../../../../core/common_widgets/button_arrow_forward.dart';
import '../../../../core/common_widgets/subscription_button.dart';
import '../../../../core/constants.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(goRouterProvider);
    final router = ref.read(goRouterProvider);
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

        ButtonArrowForward(
          text: 'voir vidéo',
          onPressed: () {
            router.push(VideoConstants.pathElementChimique);
          },
        ),

        SizedBox(height: 40),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Exemple d'exercice corrigé",
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

        ButtonArrowForward(
          text: 'voir exercice',
          onPressed: () {
            router.push('/test');
          },
        ),

        SizedBox(height: 40),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Exemple d'examen corrigé",
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

        ButtonArrowForward(
          text: 'voir examen',
          onPressed: () {
            router.push('/test');
          },
        ),

        SizedBox(height: 40),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Exemple de formules",
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

        ButtonArrowForward(
          text: 'voir formules',
          onPressed: () {
            router.push('/test');
          },
        ),

        SizedBox(height: 40),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Exemple d'astuces",
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

        ButtonArrowForward(
          text: 'voir astuces',
          onPressed: () {
            router.push('/test');
          },
        ),

        SizedBox(height: 40),

        ClipRRect(
          borderRadius: BorderRadius.circular(20.0), // Rayon des coins
          child: Image.asset(
            'assets/img/eleve-ecrivant.png',
            width:
                MediaQuery.of(context).size.width *
                0.8, // 80% de la largeur de l'écran
            fit: BoxFit.contain, // Maintenir les proportions
          ),
        ),

        SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Soyez ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'excellent(e) ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.amber,
                      ),
                    ),
                    TextSpan(
                      text: 'Dans les matières ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'scientifiques',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 20),

        SubscriptionButton(),

        SizedBox(height: 40),
      ],
    );
  }
}
