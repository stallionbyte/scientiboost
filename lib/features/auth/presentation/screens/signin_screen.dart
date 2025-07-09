import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/common_widgets/input_email.dart';
import 'package:scientiboost/core/common_widgets/input_password.dart';
import 'package:scientiboost/core/providers.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

import 'package:scientiboost/core/helpers.dart' as helpers;

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

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
          'Connexion',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(child: Center(child: _buildBody())),
    );
  }

  Widget _buildBody() {
    return Consumer(
      builder: (context, ref, child) {
        final authState = ref.watch(authViewModelProvider);

        if (authState case AuthLoading()) {
          return Center(child: CircularProgressIndicator(color: Colors.blue));
        } else {
          return _buildForm(authState: authState);
        }
      },
    );
  }

  Widget _buildSingInButton({required AuthState authState}) {
    return Consumer(
      builder: (context, ref, child) {
        return ElevatedButton(
          onPressed:
              authState is Authenticated
                  ? null
                  : () {
                    if (_formKey.currentState!.validate()) {
                      ref
                          .read(authViewModelProvider.notifier)
                          .signIn(
                            _emailController.text,
                            _passwordController.text,
                          );
                    }
                  },

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
            "Se connecter",

            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }

  Widget _buildForm({required AuthState authState}) {
    return SingleChildScrollView(
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
              //helpers.builInputEmail(controller: _emailController),
              InputEmail(controller: _emailController),

              const SizedBox(height: 20),

              // Input Mot de passe
              InputPassword(controller: _passwordController),

              const SizedBox(height: 32),

              // Bouton Se connecter
              _buildSingInButton(authState: authState),

              const SizedBox(height: 30),

              // Texte cliquable "Pas encore inscit ?"
              helpers.buildUnSignUpOrPasswordForgetOrSignInContent(
                router: ref.read(goRouterProvider),
                authState: authState,
                question: "Pas encore inscrit ?  ",
                routeText: "Sinscrire",
                route: "/signup",
              ),

              const SizedBox(height: 32),

              // Text mot de passe oublié
              helpers.buildUnSignUpOrPasswordForgetOrSignInContent(
                router: ref.read(goRouterProvider),
                authState: authState,
                question: "mot de passe oublié ?  ",
                routeText: "Réinitialiser",
                route: "/password-reset",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
