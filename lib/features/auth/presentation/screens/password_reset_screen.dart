import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/input_email.dart';
import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:scientiboost/features/auth/presentation/viewmodels/password_reset_viewmodel.dart';
import 'package:scientiboost/core/helpers.dart' as helpers;

class PasswordResetScreen extends ConsumerStatefulWidget {
  const PasswordResetScreen({super.key});

  @override
  ConsumerState<PasswordResetScreen> createState() =>
      _PasswordResetScreenState();
}

class _PasswordResetScreenState extends ConsumerState<PasswordResetScreen> {
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
    ref.listen(passwordResetViewmodelProvider, (previous, next) {
      if (next case PasswordResetError(:final message)) {
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
          'Réinitialisation',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(child: Center(child: _buildBody())),
    );
  }

  Widget _buildBody() {
    return Consumer(
      builder: (context, ref, child) {
        final authState = ref.watch(authViewModelProvider);
        final passwordResetState = ref.watch(passwordResetViewmodelProvider);

        if (passwordResetState case PasswordResetLoading()) {
          return Center(child: CircularProgressIndicator(color: Colors.blue));
        } else {
          return _buildForm(authState: authState);
        }
      },
    );
  }

  Widget _buildPasswordResetButton({required AuthState authState}) {
    return Consumer(
      builder: (context, ref, child) {
        return ElevatedButton(
          onPressed:
              authState is Authenticated
                  ? null
                  : () {
                    if (_formKey.currentState!.validate()) {
                      ref
                          .read(passwordResetViewmodelProvider.notifier)
                          .sendPasswordResetEmail(_emailController.text);
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
            "Réinitialiser mot de passe",

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
              // Input Email
              //helpers.builInputEmail(controller: _emailController),
              InputEmail(controller: _emailController),

              const SizedBox(height: 40),

              // Bouton Se connecter
              _buildPasswordResetButton(authState: authState),
            ],
          ),
        ),
      ),
    );
  }
}
