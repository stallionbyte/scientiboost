import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../auth/presentation/viewmodels/auth_viewmodel.dart';
import '../../../../core/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authViewModelProvider);
    final router = ref.watch(goRouterProvider);

    // Détermine l'état de connexion et le texte à afficher

    final isConnected = () {
      if (authState case Authenticated()) {
        return true;
      } else {
        return false;
      }
    }();
    final statusText = isConnected ? 'Connecté' : 'Déconnecté';

    return Scaffold(
      appBar: AppBar(title: const Text('Accueil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Zone de texte pour l'état de connexion
            Text(
              statusText,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Bouton "Se connecter"
            ElevatedButton(
              onPressed:
                  isConnected
                      ? null // Désactivé si connecté
                      : () {
                        context.push('/signin');
                      },
              child: const Text('Se connecter'),
            ),
            ElevatedButton(
              onPressed:
                  isConnected
                      ? null
                      : () {
                        router.push('/signup');
                      },
              child: const Text('S\'inscrire'),
            ),
            const SizedBox(height: 10),
            // Bouton "Se déconnecter"
            ElevatedButton(
              onPressed:
                  isConnected
                      ? () {
                        ref.read(authViewModelProvider.notifier).signOut();
                      }
                      : null, // Désactivé si déconnecté
              child: const Text('Se déconnecter'),
            ),
          ],
        ),
      ),
    );
  }
}
