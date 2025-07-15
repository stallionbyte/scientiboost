import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart' as helpers;

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
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
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

  Widget _buildUnAuthContent() {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Text("Vous n'êtes pas connecté(e)"),
      ),
    );
  }

  Widget _buildBody() {
    return Consumer(
      builder: (context, ref, child) {
        final authState = ref.watch(authViewModelProvider);

        if (authState case AuthLoading()) {
          return Center(child: CircularProgressIndicator(color: Colors.blue));
        } else if (authState case Authenticated()) {
          return _buildPage(authState: authState);
        } else {
          return _buildUnAuthContent();
        }
      },
    );
  }

  Widget _buildPage({required AuthState authState}) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Vous êtes sur le point de vous déconnecter"),
            SizedBox(height: 20.0),
            ElevatedButton(
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
          ],
        ),
      ),
    );
  }
}
