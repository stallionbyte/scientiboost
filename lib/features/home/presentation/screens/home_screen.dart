import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/constants.dart';

import 'package:scientiboost/core/providers.dart';
import 'package:scientiboost/core/common_widgets/button_arrow_forward.dart';
import 'package:scientiboost/core/common_widgets/subscription_button.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),

          _buildHomeImage(uri: "assets/img/eleve-scientific.png"),

          SizedBox(height: 40),

          _buildSubjectOption(subject: "PC"),

          SizedBox(height: 20),

          _buildSubjectOptionWithoutCheckIcon(subject: "SVT"),

          Text(
            '(bientot)',
            style: const TextStyle(fontSize: 16, color: Colors.blue),
          ),

          SizedBox(height: 20),

          _buildSubjectOptionWithoutCheckIcon(subject: "MATH"),

          Text(
            '(bientot)',
            style: const TextStyle(fontSize: 16, color: Colors.blue),
          ),

          SizedBox(height: 40),

          _buildAvalaibleFeature(feature: "Videos explicatives"),

          _buildAvalaibleFeature(feature: "Exercices corrigés"),

          _buildAvalaibleFeature(feature: "Sujets d'examen corrigés"),

          _buildAvalaibleFeature(feature: "Receuil de formules"),

          _buildAvalaibleFeature(feature: "Astuces"),

          SizedBox(height: 40),

          /*
          ButtonArrowForward(
            text: 'test',
            onPressed: () {
              ref.read(goRouterProvider).push('/test');
            },
          ),
          */
          ButtonArrowForward(
            text: 'testVideo',
            onPressed: () {
              ref
                  .read(goRouterProvider)
                  .push(VideoConstants.pathElementChimique);
            },
          ),
          SizedBox(height: 40),

          _buildHomeCard(
            title: "Exemple d'exercice corrigé",
            route: "/test",
            actionText: "voir exercice",
            icon: Icons.assignment,
          ),

          SizedBox(height: 40),

          _buildHomeCard(
            title: "Exemple d'examen corrigé",
            route: "/test",
            actionText: "voir examen",
            icon: Icons.school,
          ),

          SizedBox(height: 40),

          _buildHomeCard(
            title: "Exemple de formules",
            route: "/test",
            actionText: "voir formules",
            icon: Icons.functions,
          ),

          SizedBox(height: 40),

          _buildHomeCard(
            title: "Exemple d'astuces",
            route: "/test",
            actionText: "voir astuces",
            icon: Icons.lightbulb_circle,
          ),

          SizedBox(height: 40),

          _buildHomeImage(uri: "assets/img/eleve-ecrivant.png"),

          SizedBox(height: 20),

          _buildCtaText(),

          SizedBox(height: 20),

          SubscriptionButton(),

          SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget _buildSubjectOptionWithoutCheckIcon({required String subject}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: '$subject: ',
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
    );
  }

  Widget _buildSubjectOption({required String subject}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.check_circle_outline, color: Colors.blue, size: 30),
        SizedBox(width: 20),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: '$subject: ',
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
    );
  }

  Widget _buildHomeImage({required String uri}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0), // Rayon des coins
      child: Image.asset(
        uri,
        width:
            MediaQuery.of(context).size.width *
            0.8, // 80% de la largeur de l'écran
        fit: BoxFit.contain, // Maintenir les proportions
      ),
    );
  }

  Widget _buildAvalaibleFeature({required String feature}) {
    return Row(
      children: [
        SizedBox(width: 20),
        Icon(Icons.check_circle_outline, color: Colors.blue),
        const SizedBox(width: 10),

        Expanded(
          child: Text(
            feature,
            style: const TextStyle(fontSize: 16, color: Colors.blue),
          ),
        ),
      ],
    );
  }

  Widget _buildHomeCard({
    required String title,
    required String route,
    required String actionText,
    required IconData icon,
  }) {
    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(icon, size: 80.0, color: Colors.blue),

          SizedBox(height: 20),
          // Titre
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                //padding: const EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 20),

          // Bouton
          Padding(
            padding: const EdgeInsets.all(16),
            child: ButtonArrowForward(
              text: actionText,
              onPressed: () {
                ref.read(goRouterProvider).push(route);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCtaText() {
    return Row(
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
    );
  }
}
