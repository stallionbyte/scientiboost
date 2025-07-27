import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/first_app_bar.dart';
import 'package:scientiboost/core/common_widgets/third_app_bar.dart';

import 'package:scientiboost/core/common_widgets/unsubscribed_message.dart';
import 'package:scientiboost/core/providers/providers.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';

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
  bool isCorrectionVisible = false;
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
        _buildHeaderInfo(label: "Matière", value: widget.matiere),

        SizedBox(height: 20.0),

        _buildHeaderInfo(
          label: "Chapitre ${widget.chapNum}",
          value: widget.chapTitle,
        ),
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

  Widget _buildToggleCorrectionButton() {
    final authState = ref.watch(authViewModelProvider);

    bool isAuth = false;

    if (authState case Authenticated()) {
      isAuth = true;
    }
    return ElevatedButton(
      onPressed:
          isAuth
              ? () {
                setState(() {
                  isCorrectionVisible = !isCorrectionVisible;
                });

                if (isCorrectionVisible) {
                  _scrollDown(offset: 150.0);
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

  Widget _buildCorrection() {
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
            return widget.correction;
          } else {
            return UnsubscribedMessage(subject: widget.matiere);
          }
        } else {
          return UnsubscribedMessage(subject: widget.matiere);
        }
      },
    );
  }

  Widget _buildExercice() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.0),
      controller: _scrollController,
      child: Column(
        children: [
          _buildHeader(),

          SizedBox(height: 40),

          _buildTitle(title: "Exercice ${widget.exoNum}", fontSize: 30.0),

          SizedBox(height: 20),

          widget.enonce,

          SizedBox(height: 40),

          _buildToggleCorrectionButton(),

          const SizedBox(height: 40),

          if (isCorrectionVisible) ...[
            _buildCorrection(),
            const SizedBox(height: 40),
          ],
        ],
      ),
    );
  }
}
