import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/first_app_bar.dart';
import 'package:scientiboost/core/common_widgets/third_app_bar.dart';

import 'package:scientiboost/core/common_widgets/unsubscribed_message.dart';

import 'package:scientiboost/core/providers/providers.dart';

import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';
import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

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

  // Créer un ScrollController
  final ScrollController _scrollController = ScrollController();

  // Méthode pour déclencher un léger scroll vers le bas
  void _scrollDown({required double offset}) {
    // Défile de offset pixels vers le bas avec une animation fluide
    _scrollController.animateTo(
      _scrollController.offset + offset, // Déplace de offset pixels
      duration: Duration(milliseconds: 300), // Durée de l'animation
      curve: Curves.easeInOut, // Courbe d'animation
    );
  }

  @override
  void dispose() {
    // Libérer le ScrollController
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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

  Widget _buildHeaderInfo({required String label, required String value}) {
    return Row(
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black, fontSize: 20),
              children: <TextSpan>[
                TextSpan(
                  text: '$label:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: '   $value'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        _buildHeaderInfo(label: "Pays", value: widget.pays),

        SizedBox(height: 20.0),

        _buildHeaderInfo(label: "Matière", value: widget.matiere),
      ],
    );
  }

  Widget _buildTitle({required String title, required double fontSize}) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildExam() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      controller: _scrollController,
      child: Column(
        children: [
          SizedBox(height: 20),

          _buildHeader(),

          SizedBox(height: 40),

          _buildTitle(title: widget.examInfos, fontSize: 35.0),

          SizedBox(height: 40),

          _buildTitle(title: "Chimie", fontSize: 30.0),

          SizedBox(height: 20),

          _buildTitle(title: "Exercice 1", fontSize: 25.0),

          SizedBox(height: 20),

          _buildExo(
            widget.enonceChimExo1,
            widget.correctionChimExo1,
            'chimExo1',
          ),

          SizedBox(height: 20),

          _buildTitle(title: "Exercice 2", fontSize: 25.0),

          SizedBox(height: 20),

          _buildExo(
            widget.enonceChimExo2,
            widget.correctionChimExo2,
            'chimExo2',
          ),

          SizedBox(height: 20),

          _buildTitle(title: "Physique", fontSize: 30.0),

          SizedBox(height: 20),

          _buildTitle(title: "Exercice 1", fontSize: 25.0),

          SizedBox(height: 20),

          _buildExo(widget.enoncePhyExo1, widget.correctionPhyExo1, 'phyExo1'),

          SizedBox(height: 20),

          _buildTitle(title: "Exercice 2", fontSize: 25.0),

          SizedBox(height: 20),

          _buildExo(widget.enoncePhyExo2, widget.correctionPhyExo2, 'phyExo2'),

          SizedBox(height: 20),

          _buildTitle(title: "Exercice 3", fontSize: 25.0),

          SizedBox(height: 20),

          _buildExo(widget.enoncePhyExo3, widget.correctionPhyExo3, 'phyExo3'),

          SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildToggleCorrectionButton({
    required String exo,
    required bool isCorrectionVisible,
  }) {
    final authState = ref.watch(authViewModelProvider);

    bool isAuth = false;

    if (authState case Authenticated()) {
      isAuth = true;
    }
    return ElevatedButton(
      onPressed:
          isAuth
              ? () {
                switch (exo) {
                  case 'chimExo1':
                    setState(() {
                      isCorrectionChimExo1Visible =
                          !isCorrectionChimExo1Visible;
                    });

                    break;
                  case 'chimExo2':
                    setState(() {
                      isCorrectionChimExo2Visible =
                          !isCorrectionChimExo2Visible;
                    });

                    break;
                  case 'phyExo1':
                    setState(() {
                      isCorrectionPhyExo1Visible = !isCorrectionPhyExo1Visible;
                    });

                    break;
                  case 'phyExo2':
                    setState(() {
                      isCorrectionPhyExo2Visible = !isCorrectionPhyExo2Visible;
                    });

                    break;

                  default:
                    setState(() {
                      isCorrectionPhyExo3Visible = !isCorrectionPhyExo3Visible;
                    });

                    if (isCorrectionPhyExo3Visible) {
                      _scrollDown(offset: 150.0);
                    }
                }
              }
              : () {
                ref.read(goRouterProvider).push("/signin");
              },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white, // Texte et icône blancs
        padding: const EdgeInsets.all(12.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
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
        ],
      ),
    );
  }

  Widget _buildCorrection({required Widget correction}) {
    return Consumer(
      builder: (context, ref, child) {
        final subscriptionState = ref.watch(subscriptionViewModelProvider);

        if (subscriptionState case Subscribed(:final subscriptions)) {
          if (ref
              .read(subscriptionViewModelProvider.notifier)
              .isSubscribed(
                subject: widget.matiere,
                subscriptions: subscriptions,
              )) {
            return correction;
          } else {
            return UnsubscribedMessage(subject: widget.matiere);
          }
        } else {
          return UnsubscribedMessage(subject: widget.matiere);
        }
      },
    );
  }

  Widget _buildExo(Widget enonce, Widget correction, String exo) {
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
        enonce,

        SizedBox(height: 20),

        _buildToggleCorrectionButton(
          exo: exo,
          isCorrectionVisible: isCorrectionVisible,
        ),

        const SizedBox(height: 20),

        // Afficher la correction seulement si elle est visible
        if (isCorrectionVisible) ...[
          _buildCorrection(correction: correction),

          const SizedBox(height: 20),
        ],
      ],
    );
  }
}
