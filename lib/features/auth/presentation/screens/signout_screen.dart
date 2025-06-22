import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/auth_viewmodel.dart';

import '../../../../core/helpers.dart' as helpers;

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
          helpers.scheduleShowSnackBar(
            context: context,
            content: message,
            backgroundColor: Colors.red,
          );
          return _buildPage(context, ref);
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
        padding: EdgeInsets.all(12),
      ),

      child: Text(
        "Se déconnecter",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildPage(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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

          SizedBox(height: 40),

          _checkButton(context, ref),
        ],
      ),
    );
  }
}
