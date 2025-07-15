import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';
import 'package:scientiboost/features/internet/presentation/viewmodels/internet_viewmodel.dart';

import 'package:scientiboost/core/common_widgets/titre.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart' as helpers;
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/providers.dart';

class SubscriptionSreen extends ConsumerStatefulWidget {
  const SubscriptionSreen({super.key});

  @override
  ConsumerState<SubscriptionSreen> createState() => _SubscriptionSreenState();
}

class _SubscriptionSreenState extends ConsumerState<SubscriptionSreen> {
  // Variables pour les checkboxes
  bool _physiqueChimie = false;
  bool _svt = false;
  bool _mathematiques = false;

  @override
  Widget build(BuildContext context) {
    ref.listen(subscriptionViewModelProvider, (previous, next) {
      if (next case SubscriptionError(:final message)) {
        if (mounted) {
          helpers.showSnackBar(
            context: context,
            duration:
                message.contains(SubscriptionConstants.subscriptionsForbiden)
                    ? Duration(seconds: 10)
                    : Duration(seconds: 5),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.error_rounded, color: Colors.white),
                Text(message, style: const TextStyle(color: Colors.white)),
              ],
            ),
            backgroundColor: Colors.red,
          );
        }
      }
    });

    ref.listen(internetViewmodelProvider, (previous, next) {
      if (next case InternetError(:final message)) {
        if (mounted) {
          helpers.showSnackBar(
            context: context,
            backgroundColor: Colors.red,
            content: Row(
              children: [
                Icon(Icons.cloud_off_rounded, color: Colors.white),
                SizedBox(width: 8),
                Expanded(child: Text(message)),
              ],
            ),
          );
        }
      } else if (next case InternetIsNotConnected()) {
        if (mounted) {
          helpers.showSnackBar(
            context: context,
            backgroundColor: Colors.red,
            content: Row(
              children: [
                Icon(Icons.signal_wifi_off_rounded, color: Colors.white),
                SizedBox(width: 8),
                Expanded(child: Text(InternetConstants.connexionError)),
              ],
            ),
          );
        }
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Abonnement',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(child: _buildForm()),
    );
  }

  Widget _buildSubscriptionButton() {
    return Consumer(
      builder: (context, ref, child) {
        final authState = ref.watch(authViewModelProvider);
        final subscriptionState = ref.watch(subscriptionViewModelProvider);

        bool isAuth = false;
        bool isLoading = false;

        if (authState case Authenticated()) {
          isAuth = true;
        }
        if (subscriptionState case SubscriptionLoading()) {
          isLoading = true;
        }

        return ElevatedButton(
          onPressed:
              isAuth
                  ? () {
                    if (_physiqueChimie || _svt || _mathematiques) {
                      ref
                          .read(subscriptionViewModelProvider.notifier)
                          .makeSubscriptionsPending(
                            physiqueChimie: _physiqueChimie,
                            svt: _svt,
                            mathematiques: _mathematiques,
                          );
                    } else {
                      if (mounted) {
                        helpers.scheduleShowSnackBar(
                          context: context,
                          backgroundColor: Colors.red,
                          content: Row(
                            children: [
                              Icon(Icons.error_rounded, color: Colors.white),
                              Expanded(
                                child: Text(SubscriptionConstants.unselected),
                              ),
                            ],
                          ),
                        );
                      }
                    }
                  }
                  : () {
                    ref.read(goRouterProvider).push("/signin");
                  },

          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "S'abonner",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),

              SizedBox(width: 8),

              isLoading
                  ? CircularProgressIndicator(color: Colors.white)
                  : Icon(Icons.arrow_forward, color: Colors.white),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCheckBoxPc() {
    return CheckboxListTile(
      activeColor: Colors.blue,
      title: const Text(
        'Physique-Chimie (PC)',
        style: TextStyle(color: Colors.blue),
      ),

      value: _physiqueChimie,
      onChanged: (bool? value) {
        setState(() {
          _physiqueChimie = value ?? false;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,
    );
  }

  Widget _buildCheckBoxSvt() {
    return CheckboxListTile(
      activeColor: Colors.blue,
      title: const Text('SVT (bientôt)', style: TextStyle(color: Colors.blue)),

      value: _svt,
      onChanged: (bool? value) {
        setState(() {
          _svt = value ?? false;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,
    );
  }

  Widget _buildCheckBoxMath() {
    return CheckboxListTile(
      activeColor: Colors.blue,
      title: const Text(
        'Mathématiques (bientôt)',
        style: TextStyle(color: Colors.blue),
      ),

      value: _mathematiques,
      onChanged: (bool? value) {
        setState(() {
          _mathematiques = value ?? false;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,
    );
  }

  Widget _buildForm() {
    return Consumer(
      builder: (context, ref, child) {
        final internetState = ref.watch(internetViewmodelProvider);
        final subscriptionState = ref.watch(subscriptionViewModelProvider);

        if (internetState case InternetLoading()) {
          return Center(child: CircularProgressIndicator(color: Colors.blue));
        } else if (subscriptionState case SubscriptionLoading()) {
          return Center(child: CircularProgressIndicator(color: Colors.blue));
        } else {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 40),

                  Titre(title: "Sélectionnez vos matières :"),

                  // Checkbox Physique-Chimie
                  _buildCheckBoxPc(),

                  // Checkbox SVT
                  _buildCheckBoxSvt(),

                  // Checkbox Mathématiques
                  _buildCheckBoxMath(),

                  const SizedBox(height: 20),

                  // Bouton S'abonner
                  _buildSubscriptionButton(),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
