import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/first_app_bar.dart';
import 'package:scientiboost/core/common_widgets/third_app_bar.dart';
import 'package:scientiboost/core/common_widgets/miss_matiere_message.dart';
import 'package:scientiboost/core/common_widgets/unsubscribed_message.dart';
import 'package:scientiboost/core/providers.dart';
import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';
import 'package:scientiboost/features/exos/presentation/viewmodels/exo_viewmodel.dart';
import 'package:scientiboost/features/internet/presentation/viewmodels/internet_viewmodel.dart';

import 'package:scientiboost/core/constants.dart';

import 'package:scientiboost/core/helpers.dart' as helpers;

class ExoScreen extends ConsumerStatefulWidget {
  const ExoScreen({
    super.key,
    required this.enonce,
    required this.correction,
    required this.matiere,
    required this.chapNum,
    required this.chapTitle,
    required this.exoNum,
    required this.route,
    required this.favorites,
  });

  final Widget enonce;
  final Widget correction;
  final String matiere;
  final int chapNum;
  final String chapTitle;
  final int exoNum;
  final String route;
  final String favorites;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExoScreenState();
}

class _ExoScreenState extends ConsumerState<ExoScreen> {
  bool isCorrectionVisible = false; // Variable d'état locale

  @override
  Widget build(BuildContext context) {
    ref.watch(exoViewmodelProvider);
    ref.watch(sharedPreferencesProvider);
    final internetState = ref.watch(internetViewmodelProvider);

    if (internetState case InternetError(:final message)) {
      helpers.scheduleShowSnackBar(
        context: context,
        content: Row(
          children: [
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(Icons.cloud_off_rounded, color: Colors.white),
          ],
        ),

        backgroundColor: Colors.red,
        duration: Duration(seconds: 10),
      );
    } else if (internetState case InternetIsNotConnected()) {
      helpers.scheduleShowSnackBar(
        context: context,
        content: Row(
          children: [
            Text(
              InternetConstants.connexionError,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            SizedBox(width: 8),

            Icon(Icons.cloud_off_rounded, color: Colors.white),
          ],
        ),
        backgroundColor: Colors.red,
      );
    }

    return Scaffold(
      appBar: FirstAppBar(),
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [_buildThirdAppBar(), Expanded(child: _buildExercice())],
        ),
      ),
    );
  }

  Widget _buildThirdAppBar() {
    return ThirdAppBar(
      storageFavoritesKey: widget.favorites,
      favoriteRoute: widget.route,
    );
  }

  Widget _buildExercice() {
    final subscriptionState = ref.watch(subscriptionViewModelProvider);

    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Matère:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '   ${widget.matiere}'),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Chapitre ${widget.chapNum}:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '   ${widget.chapTitle}'),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 40),

          Text(
            'Exercice ${widget.exoNum}',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 20),

          widget.enonce,

          SizedBox(height: 40),

          // Bouton toggle correction
          ElevatedButton(
            onPressed: () async {
              if (!isCorrectionVisible) {
                await ref
                    .read(subscriptionViewModelProvider.notifier)
                    .checkSubscription();
              }

              if (ref.read(internetViewmodelProvider.notifier).isConnected() &&
                  ref.read(authViewModelProvider.notifier).isAuthenticated()) {
                setState(() {
                  isCorrectionVisible =
                      !isCorrectionVisible; // Mise à jour locale
                });
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Fond bleu
              foregroundColor: Colors.white, // Texte et icône blancs
              padding: const EdgeInsets.all(12.0), // Espacement interne
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18), // Coins arrondis
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isCorrectionVisible
                      ? 'Masquer correction'
                      : 'Voir correction',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                if (ref.watch(internetViewmodelProvider)
                    case InternetLoading()) ...[
                  SizedBox(width: 8),
                  CircularProgressIndicator(color: Colors.white),
                ],
              ],
            ),
          ),

          const SizedBox(height: 40),

          // Afficher la correction seulement si elle est visible
          if (isCorrectionVisible) ...[
            () {
              if (subscriptionState case SubscriptionLoading()) {
                return CircularProgressIndicator();
              } else if (subscriptionState case Subscribed(
                :final subscription,
              )) {
                if (ref
                    .read(subscriptionViewModelProvider.notifier)
                    .isExpired(date: subscription.expireAt)) {
                  return UnsubscribedMessage();
                } else {
                  if (subscription.subjects?.contains('pc') as bool) {
                    return widget.correction;
                  } else {
                    return MissMatiereMessage(matieres: 'PC');
                  }
                }
              } else {
                return UnsubscribedMessage();
              }
            }(),

            const SizedBox(height: 30),
          ],
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
