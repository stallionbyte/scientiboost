import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/password_reset_viewmodel.dart';

import '../../../../core/providers.dart';

class PasswordResetScreen extends ConsumerStatefulWidget {
  const PasswordResetScreen({super.key});

  @override
  ConsumerState<PasswordResetScreen> createState() =>
      _PasswordResetScreenState();
}

class _PasswordResetScreenState extends ConsumerState<PasswordResetScreen> {
  final TextEditingController _emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(goRouterProvider);
    final passwordResetState = ref.watch(passwordResetViewmodelProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reinitialisation',
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
        if (passwordResetState case PasswordResetLoading()) {
          return const Center(child: CircularProgressIndicator());
        } else if (passwordResetState case PasswordResetInitial()) {
          return _buildForm(context);
        } else if (passwordResetState case PasswordResetError(:final message)) {
          return _buildForm(context, error: message);
        } else if (passwordResetState case PasswordResetEmailSent()) {
          return _buildSentPage(context);
        }
      }(),
    );
  }

  Widget _buildForm(BuildContext context, {String? error}) {
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
                const SizedBox(height: 60),

                // Input Email
                TextFormField(
                  controller: _emailController,
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

                if (error != null) ...[
                  Text(error, style: const TextStyle(color: Colors.red)),
                ],

                const SizedBox(height: 32),

                // Bouton Réinitialiser
                ElevatedButton(
                  onPressed: () {
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
                    "réinitialiser le mot de passe",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSentPage(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Un email de réinitialisation de mot de passe a été envoyé. Veuillez vérifier votre boite de reception',
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(goRouterProvider).push('/pages-wrapper');
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12),
            ),

            child: Text(
              "j'ai compris",
              style: TextStyle(fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
