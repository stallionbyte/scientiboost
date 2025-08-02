import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/input_password.dart';
import 'package:scientiboost/core/providers/providers.dart';
import 'package:scientiboost/core/common_widgets/input_email.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart' as helpers;

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
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
          'Inscription',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
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

  Widget _buildSingUpButton({required AuthState authState}) {
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
                          .signUp(
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
            "S'inscrire",

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
              EspConstants.esp40,

              // Input Email
              //helpers.builInputEmail(controller: _emailController),
              InputEmail(controller: _emailController),

              EspConstants.esp40,

              // Input Mot de passe
              InputPassword(controller: _passwordController),

              const SizedBox(height: 32),

              // Bouton Se connecter
              _buildSingUpButton(authState: authState),

              const SizedBox(height: 32),

              // Texte cliquable "Déjà inscit ?  "
              helpers.buildUnSignUpOrPasswordForgetOrSignInContent(
                router: ref.read(goRouterProvider),
                authState: authState,
                question: "Déjà inscit ?  ",
                routeText: "Se connecter",
                route: "/signin",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
