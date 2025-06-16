import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/auth_viewmodel.dart';

class SignOutScreen extends ConsumerWidget {
  const SignOutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Déconnexion')),
      body: () {
        if (authState case AuthLoading() || AuthInitial()) {
          return const Center(child: CircularProgressIndicator());
        } else if (authState case AuthError(:final message)) {
          return _buildPage(context, ref, error: message);
        } else {
          return _buildPage(context, ref);
        }
      }(),
    );
  }

  Widget _checkButton(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        if (ref.read(authViewModelProvider.notifier).isAuthenticated()) {
          return () {
            ref.read(authViewModelProvider.notifier).signOut();
          };
        } else {
          return null;
        }
      }(),

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        padding: EdgeInsets.symmetric(horizontal: 12),
      ),

      child: Text(
        "Se déconnecter",
        style: TextStyle(fontSize: 14),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildPage(BuildContext context, WidgetRef ref, {String? error}) {
    return Center(
      child: Column(
        children: [
          if (ref.read(authViewModelProvider.notifier).isAuthenticated())
            Text(
              'Vous etes sur le point de vous déconnecter',
              style: const TextStyle(color: Colors.red),
            ),
          if (!ref.read(authViewModelProvider.notifier).isAuthenticated())
            Text(
              'Vous etes déconnecté(e)',
              style: const TextStyle(color: Colors.red),
            ),
          if (error != null) ...[
            Text(error, style: const TextStyle(color: Colors.red)),
          ],
          _checkButton(context, ref),
        ],
      ),
    );
  }
}
