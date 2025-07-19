import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

import 'package:scientiboost/core/common_widgets/button_arrow_forward.dart';
import 'package:scientiboost/core/providers/providers.dart';

class ProfilScreen extends ConsumerWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child: _buildPage()),
    );
  }

  Widget _buildEmail({required WidgetRef ref}) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 16, color: Colors.black),
        children: <TextSpan>[
          TextSpan(
            text: 'Email:   ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          TextSpan(
            text:
                ref.read(authViewModelProvider.notifier).getUser()?.email ??
                "email",
          ),
        ],
      ),
    );
  }

  Widget _buildAuthContent({required WidgetRef ref}) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),

          _buildEmail(ref: ref),

          const SizedBox(height: 20),

          ButtonArrowForward(
            text: 'abonnement(s)',
            onPressed: () {
              ref.read(goRouterProvider).push('/subscription-infos');
            },
          ),

          ButtonArrowForward(
            text: 'Se déconnecter',
            onPressed: () {
              ref.read(goRouterProvider).push('/signout');
            },
          ),
        ],
      ),
    );
  }

  Widget _buildUnAuthContent({required WidgetRef ref}) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Vous n'êtes pas connecté"),
          SizedBox(height: 20),
          ButtonArrowForward(
            text: "Se connecter",
            onPressed: () {
              ref.read(goRouterProvider).push("/signin");
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPage() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer(
          builder: (context, ref, child) {
            final authState = ref.watch(authViewModelProvider);

            if (authState case Authenticated()) {
              return _buildAuthContent(ref: ref);
            } else {
              return _buildUnAuthContent(ref: ref);
            }
          },
        ),
      ),
    );
  }
}
