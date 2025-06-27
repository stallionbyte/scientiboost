import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

import 'package:scientiboost/core/providers.dart';

import 'package:scientiboost/core/helpers.dart' as helpers;

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _isPasswordHidden = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(goRouterProvider);
    final authState = ref.watch(authViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inscription',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Colors.white,
      body: () {
        if (authState case AuthInitial() || AuthLoading()) {
          return const Center(child: CircularProgressIndicator());
        } else if (authState case AuthError(:final message)) {
          helpers.scheduleShowSnackBar(
            context: context,
            content: message,
            backgroundColor: Colors.red,
          );
          return _buildForm(context);
        } else {
          return _buildForm(context);
        }
      }(),
    );
  }

  Widget _buildForm(BuildContext context) {
    final router = ref.read(goRouterProvider);

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),

                // Input Email
                TextFormField(
                  controller: _emailController,
                  enabled:
                      !ref
                          .read(authViewModelProvider.notifier)
                          .isAuthenticated(),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'votre email',
                    prefixIcon: const Icon(Icons.email, color: Colors.blue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    labelStyle: const TextStyle(color: Colors.blue),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'email manquant';
                    }
                    if (!value.contains('@')) {
                      return 'email invalide';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                // Input Mot de passe
                TextFormField(
                  controller: _passwordController,
                  obscureText: _isPasswordHidden,
                  enabled:
                      !ref
                          .read(authViewModelProvider.notifier)
                          .isAuthenticated(),
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    hintText: 'votre mot de passe',
                    prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordHidden
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordHidden = !_isPasswordHidden;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    labelStyle: const TextStyle(color: Colors.blue),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'mot de passe manquant';
                    }
                    if (value.length < 6) {
                      return 'minimun 6 caractères';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 32),

                const SizedBox(height: 32),

                // Bouton S'inscrire
                ElevatedButton(
                  onPressed: () {
                    if (!ref
                        .read(authViewModelProvider.notifier)
                        .isAuthenticated()) {
                      return () {
                        if (_formKey.currentState!.validate()) {
                          ref
                              .read(authViewModelProvider.notifier)
                              .signUp(
                                _emailController.text,
                                _passwordController.text,
                              );
                        }
                      };
                    } else {
                      return null;
                    }
                  }(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                  ),
                  child: const Text(
                    "S'inscrire",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),

                const SizedBox(height: 32),

                // Texte cliquable "Déjà inscrit ?"
                if (!ref.read(authViewModelProvider.notifier).isAuthenticated())
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        router.push('/signin');
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: 'Déjà inscrit ? ',
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                          children: [
                            TextSpan(
                              text: 'Se connecter',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
