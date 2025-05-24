import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodels/auth_viewmodel.dart';

// Écran pour vérifier l'email
class VerifyEmailScreen extends ConsumerWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Vérification de l\'email')),
      body: switch (authState) {
        Initial() => const Center(child: CircularProgressIndicator()),
        Loading() => const Center(child: CircularProgressIndicator()),
        Authenticated(:final user) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Un email de vérification a été envoyé à ${user.email}. Veuillez vérifier votre boîte de réception.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.currentUser?.reload();
                  ref.read(authViewModelProvider.notifier).build();
                },
                child: const Text('J\'ai vérifié mon email'),
              ),
              TextButton(
                onPressed: () {
                  ref.read(authViewModelProvider.notifier).signOut();
                },
                child: const Text('Se déconnecter'),
              ),
            ],
          ),
        ),
        Unauthenticated() => const Center(child: Text('Non connecté')),
        Error(:final message) => Center(child: Text(message)),
      },
    );
  }
}
