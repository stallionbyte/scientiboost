import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodels/auth_viewmodel.dart';

// Écran de connexion avec un formulaire personnalisé
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isSignUp = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: Text(_isSignUp ? 'Inscription' : 'Connexion')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: switch (authState) {
          Initial() => const Center(child: CircularProgressIndicator()),
          Loading() => const Center(child: CircularProgressIndicator()),
          Authenticated(:final user) => Center(
            child: Text('Bienvenue ${user.email}'),
          ),
          Unauthenticated() => _buildForm(context),
          Error(:final message) => _buildForm(context, error: message),
        },
      ),
    );
  }

  Widget _buildForm(BuildContext context, {String? error}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _emailController,
          decoration: const InputDecoration(labelText: 'Email'),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _passwordController,
          decoration: const InputDecoration(labelText: 'Mot de passe'),
          obscureText: true,
        ),
        const SizedBox(height: 16),
        if (error != null) ...[
          Text(error, style: const TextStyle(color: Colors.red)),
          const SizedBox(height: 16),
        ],
        ElevatedButton(
          onPressed: () {
            final email = _emailController.text.trim();
            final password = _passwordController.text;
            if (_isSignUp) {
              ref.read(authViewModelProvider.notifier).signUp(email, password);
            } else {
              ref.read(authViewModelProvider.notifier).signIn(email, password);
            }
          },
          child: Text(_isSignUp ? 'S\'inscrire' : 'Se connecter'),
        ),
        TextButton(
          onPressed: () {
            setState(() => _isSignUp = !_isSignUp);
          },
          child: Text(
            _isSignUp
                ? 'Déjà un compte ? Se connecter'
                : 'Pas de compte ? S\'inscrire',
          ),
        ),
        TextButton(
          onPressed: () {
            final email = _emailController.text.trim();
            ref
                .read(authViewModelProvider.notifier)
                .sendPasswordResetEmail(email);
          },
          child: const Text('Mot de passe oublié ?'),
        ),
      ],
    );
  }
}
