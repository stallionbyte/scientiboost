import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/email_verification_viewmodel.dart';
import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

import 'package:scientiboost/core/helpers.dart' as helpers;

import 'package:scientiboost/core/providers.dart';

class EmailVerificationScreen extends ConsumerStatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  ConsumerState<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState
    extends ConsumerState<EmailVerificationScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(goRouterProvider);
    ref.watch(authViewModelProvider);
    final emailVerificationState = ref.watch(
      emailVerificationViewmodelProvider,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vérification',
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
        if (emailVerificationState case EmailVerificationLoading()) {
          return const Center(child: CircularProgressIndicator());
        } else if (emailVerificationState case EmailVerificationInitial()) {
          return _buildForm(context);
        } else if (emailVerificationState case EmailVerificationError(
          :final message,
        )) {
          helpers.scheduleShowSnackBar(
            context: context,
            content: message,
            backgroundColor: Colors.red,
          );
          return _buildForm(context);
        } else if (emailVerificationState case EmailVerificationEmailSent()) {
          return _buildSentPage(context);
        }
      }(),
    );
  }

  Widget _buildForm(BuildContext context) {
    final email = ref.read(authViewModelProvider.notifier).getUser()?.email;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Vous est etes sur le point d'envoyer un email de vérification pour vérifier l'email: $email",
          ),

          ElevatedButton(
            onPressed: () {
              ref
                  .read(emailVerificationViewmodelProvider.notifier)
                  .sendEmailVerification();
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
              "envoyer",
              style: TextStyle(fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSentPage(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Un email de vérification a été envoyé. Veuillez vérifier votre boite de reception',
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(goRouterProvider).push('/profil');
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
