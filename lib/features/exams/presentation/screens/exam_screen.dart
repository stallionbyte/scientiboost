import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/first_app_bar.dart';
import 'package:scientiboost/core/common_widgets/third_app_bar.dart';
import 'package:scientiboost/core/common_widgets/miss_matiere_message.dart';
import 'package:scientiboost/core/common_widgets/unsubscribed_message.dart';

import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';
import 'package:scientiboost/features/internet/presentation/viewmodels/internet_viewmodel.dart';

import 'package:scientiboost/core/constants.dart';

import 'package:scientiboost/core/helpers.dart' as helpers;

class ExamScreen extends ConsumerStatefulWidget {
  const ExamScreen({
    super.key,
    required this.favorites,
    required this.route,
    required this.pays,
    required this.matiere,
    required this.examInfos,

    required this.enonceChimExo1,
    required this.correctionChimExo1,
    required this.enonceChimExo2,
    required this.correctionChimExo2,

    required this.enoncePhyExo1,
    required this.correctionPhyExo1,
    required this.enoncePhyExo2,
    required this.correctionPhyExo2,
    required this.enoncePhyExo3,
    required this.correctionPhyExo3,
  });

  final String pays;
  final String matiere;
  final String examInfos;
  final String favorites;
  final String route;

  final Widget enonceChimExo1;
  final Widget correctionChimExo1;
  final Widget enonceChimExo2;
  final Widget correctionChimExo2;

  final Widget enoncePhyExo1;
  final Widget correctionPhyExo1;
  final Widget enoncePhyExo2;
  final Widget correctionPhyExo2;
  final Widget enoncePhyExo3;
  final Widget correctionPhyExo3;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExamScreenState();
}

class _ExamScreenState extends ConsumerState<ExamScreen> {
  bool isCorrectionChimExo1Visible = false;
  bool isCorrectionChimExo2Visible = false;
  bool isCorrectionPhyExo1Visible = false;
  bool isCorrectionPhyExo2Visible = false;
  bool isCorrectionPhyExo3Visible = false;

  @override
  Widget build(BuildContext context) {
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
          children: [_buildThirdAppBar(), Expanded(child: _buildExam())],
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

  Widget _buildExam() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
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
                        text: 'Pays:',

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '   ${widget.pays}'),
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
          SizedBox(height: 40),

          Text(
            widget.examInfos,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Chimie',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),

          Text(
            'Exercice 1',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.black,
            ),
          ),

          _buildExo(
            widget.enonceChimExo1,
            widget.correctionChimExo1,
            'chimExo1',
          ),

          SizedBox(height: 20),
          Text(
            'Exercice 2',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.black,
            ),
          ),

          _buildExo(
            widget.enonceChimExo2,
            widget.correctionChimExo2,
            'chimExo2',
          ),

          SizedBox(height: 20),
          Text(
            'Physique',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Exercice 1',
            style: const TextStyle(
              fontSize: 25,

              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          _buildExo(widget.enoncePhyExo1, widget.correctionPhyExo1, 'phyExo1'),

          SizedBox(height: 20),
          Text(
            'Exercice 2',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.black,
            ),
          ),

          _buildExo(widget.enoncePhyExo2, widget.correctionPhyExo2, 'phyExo2'),

          SizedBox(height: 20),
          Text(
            'Exercice 3',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.black,
            ),
          ),

          _buildExo(widget.enoncePhyExo3, widget.correctionPhyExo3, 'phyExo3'),

          SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildExo(Widget enonce, Widget correction, String exo) {
    final subscriptionState = ref.watch(subscriptionViewModelProvider);

    bool isCorrectionVisible;
    switch (exo) {
      case 'chimExo1':
        isCorrectionVisible = isCorrectionChimExo1Visible;
        break;
      case 'chimExo2':
        isCorrectionVisible = isCorrectionChimExo2Visible;
        break;
      case 'phyExo1':
        isCorrectionVisible = isCorrectionPhyExo1Visible;
        break;
      case 'phyExo2':
        isCorrectionVisible = isCorrectionPhyExo2Visible;
        break;
      default:
        isCorrectionVisible = isCorrectionPhyExo3Visible;
    }

    return Column(
      children: [
        SizedBox(height: 20),

        enonce,

        SizedBox(height: 40),

        // Bouton toggle correction
        ElevatedButton(
          onPressed: () async {
            switch (exo) {
              case 'chimExo1':
                if (!isCorrectionChimExo1Visible) {
                  await ref
                      .read(subscriptionViewModelProvider.notifier)
                      .checkSubscription();
                }

                if (ref
                    .read(internetViewmodelProvider.notifier)
                    .isConnected()) {
                  setState(() {
                    isCorrectionChimExo1Visible =
                        !isCorrectionChimExo1Visible; // Mise à jour locale
                  });
                }

                break;
              case 'chimExo2':
                if (!isCorrectionChimExo2Visible) {
                  await ref
                      .read(subscriptionViewModelProvider.notifier)
                      .checkSubscription();
                }

                if (ref
                    .read(internetViewmodelProvider.notifier)
                    .isConnected()) {
                  setState(() {
                    isCorrectionChimExo2Visible =
                        !isCorrectionChimExo2Visible; // Mise à jour locale
                  });
                }

                break;
              case 'phyExo1':
                if (!isCorrectionPhyExo1Visible) {
                  await ref
                      .read(subscriptionViewModelProvider.notifier)
                      .checkSubscription();
                }

                if (ref
                    .read(internetViewmodelProvider.notifier)
                    .isConnected()) {
                  setState(() {
                    isCorrectionPhyExo1Visible =
                        !isCorrectionPhyExo1Visible; // Mise à jour locale
                  });
                }

                break;
              case 'phyExo2':
                if (!isCorrectionPhyExo2Visible) {
                  await ref
                      .read(subscriptionViewModelProvider.notifier)
                      .checkSubscription();
                }

                if (ref
                    .read(internetViewmodelProvider.notifier)
                    .isConnected()) {
                  setState(() {
                    isCorrectionPhyExo2Visible =
                        !isCorrectionPhyExo2Visible; // Mise à jour locale
                  });
                }

                break;

              default:
                if (!isCorrectionPhyExo3Visible) {
                  await ref
                      .read(subscriptionViewModelProvider.notifier)
                      .checkSubscription();
                }

                if (ref
                    .read(internetViewmodelProvider.notifier)
                    .isConnected()) {
                  setState(() {
                    isCorrectionPhyExo3Visible =
                        !isCorrectionPhyExo3Visible; // Mise à jour locale
                  });
                }
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
                isCorrectionVisible ? 'Masquer correction' : 'Voir correction',
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
            } else if (subscriptionState case Subscribed(:final subscription)) {
              if (ref
                  .read(subscriptionViewModelProvider.notifier)
                  .isExpired(date: subscription.expireAt)) {
                return UnsubscribedMessage();
              } else {
                if (subscription.subjects?.contains('pc') as bool) {
                  return correction;
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
    );
  }
}
