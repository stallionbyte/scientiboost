import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

import 'package:scientiboost/core/helpers.dart' as helpers;

class SignOutScreen extends ConsumerStatefulWidget {
  const SignOutScreen({super.key});

  @override
  ConsumerState<SignOutScreen> createState() => _SignOutScreenState();
}

class _SignOutScreenState extends ConsumerState<SignOutScreen> {
  @override
  Widget build(BuildContext context) {
    ref.listen(authViewModelProvider, (previous, next) {
      if (next case AuthError(:final message)) {
        if (mounted) {
          helpers.showSnackBar(
            context: context,
            content: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.error_rounded, color: Colors.white, size: 20),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    message,
                    style: const TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.red,
          );
        }
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Déconnexion',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(child: _buildBody()),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Consumer(
      builder: (context, ref, child) {
        final authState = ref.watch(authViewModelProvider);

        if (authState case AuthLoading()) {
          return Center(child: CircularProgressIndicator(color: Colors.blue));
        } else {
          return _buildPage(authState: authState);
        }
      },
    );
  }

  Widget _buildPage({required AuthState authState}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white, // Texte et icône blancs
          padding: const EdgeInsets.all(14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        onPressed:
            authState is Authenticated
                ? () {
                  ref.read(authViewModelProvider.notifier).signOut();
                }
                : null,
        child: Text(
          "Se déconnecter",
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
