import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../auth/presentation/viewmodels/auth_viewmodel.dart';
import '../../../subscription/presentation/viewmodels/subscription_viewmodel.dart';
import '../../../../core/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authViewModelProvider);
    final router = ref.watch(goRouterProvider);
    //final subscriptionState = ref.watch(subscriptionViewModelProvider);

    // Détermine l'état de connexion et le texte à afficher

    final statusText = () {
      if (authState case Authenticated()) {
        return 'Connecté';
      } else {
        return 'Déconnecté';
      }
    }();

    //final statusText = isConnected ? 'Connecté' : 'Déconnecté';

    return Column(
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
          onPressed: () {
            if (authState case Unauthenticated()) {
              return () {
                context.push('/signin');
              };
            } else if (authState case Authenticated()) {
              return null;
            }
          }(),
          child: const Text('Se connecter'),
        ),

        ElevatedButton(
          onPressed: () {
            if (authState case Unauthenticated()) {
              return () {
                context.push('/signup');
              };
            } else if (authState case Authenticated()) {
              return null;
            }
          }(),
          child: const Text('S\'inscrire'),
        ),

        const SizedBox(height: 10),

        // Bouton "Se déconnecter"
        ElevatedButton(
          onPressed: () {
            if (authState case Authenticated()) {
              return () {
                ref.read(authViewModelProvider.notifier).signOut();
              };
            } else if (authState case Unauthenticated()) {
              return null;
            }
          }(), // Désactivé si déconnecté
          child: const Text('Se déconnecter'),
        ),

        const SizedBox(height: 10),

        // Bouton "S'abonner"
        ElevatedButton(
          onPressed: () {
            ref.read(subscriptionViewModelProvider.notifier).init();

            if (authState case Authenticated()) {
              ref
                  .read(subscriptionViewModelProvider.notifier)
                  .checkSubscription();
            }
            router.push('/subscription');
          },
          child: Text("S'abonner"),
        ),

        const SizedBox(height: 10),

        ElevatedButton(
          onPressed: () {
            if (authState case Authenticated(:final user)) {
              return () {
                router.push('/profil', extra: user);
              };
            } else if (authState case Unauthenticated()) {
              return null;
            }
          }(), // Désactivé si déconnecté
          child: const Text('Profil'),
        ),
      ],
    );
  }
}
