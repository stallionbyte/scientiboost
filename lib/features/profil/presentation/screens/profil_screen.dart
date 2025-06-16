import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../auth/presentation/viewmodels/auth_viewmodel.dart';

import '../../../../core/providers.dart';

class ProfilScreen extends ConsumerWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authViewModelProvider);
    final user_ = ref.read(authViewModelProvider.notifier).getUser();

    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Profil',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'email: ${user_?.email}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              user_?.emailVerified as bool
                  ? 'email vérifié'
                  : 'email non vérifié',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),

            ElevatedButton(
              onPressed: () {
                ref.read(goRouterProvider).push('/subscription-infos');
              },
              child: const Text('Mon abonnement'),
            ),
          ],
        ),
      ),
    );
  }
}
