import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/providers.dart';
import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';
import 'package:scientiboost/features/internet/presentation/viewmodels/internet_viewmodel.dart';

import 'package:scientiboost/core/helpers.dart' as helpers;

import 'package:scientiboost/core/constants.dart';

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
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final subscriptionState = ref.watch(subscriptionViewModelProvider);

    final internetState = ref.watch(internetViewmodelProvider);
    final noSubjectIsSelected = ref.watch(noSubjectIsSelectedProvider);

    if (noSubjectIsSelected) {
      helpers.scheduleShowSnackBar(
        context: context,
        content: Text(SubscriptionConstants.unselected),
        backgroundColor: Colors.red,
      );

      helpers.scheduleAction(
        context: context,
        action: () {
          ref.read(noSubjectIsSelectedProvider.notifier).state = false;
        },
      );
    }

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

      helpers.scheduleAction(
        context: context,
        action: () {
          ref
              .read(internetViewmodelProvider.notifier)
              .setState(InternetState.internetInitial());
        },
      );
    } else if (internetState case InternetIsNotConnected()) {
      helpers.scheduleShowSnackBar(
        context: context,
        content: Row(
          children: [
            Expanded(
              child: Text(
                InternetConstants.connexionError,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(width: 8),

            Icon(Icons.cloud_off_rounded, color: Colors.white),
          ],
        ),
        backgroundColor: Colors.red,
      );

      helpers.scheduleAction(
        context: context,
        action: () {
          ref
              .read(internetViewmodelProvider.notifier)
              .setState(InternetState.internetInitial());
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Abonnement',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Colors.white,
      body: () {
        if (internetState case InternetLoading()) {
          return Center(child: CircularProgressIndicator());
        } else if (subscriptionState case SubscriptionLoading()) {
          return Center(child: CircularProgressIndicator());
        } else if (subscriptionState case SubscriptionError(:final message)) {
          helpers.scheduleShowSnackBar(
            context: context,
            content: Text(message),
            backgroundColor: Colors.red,
          );
          return _buildForm(context);
        } else if (subscriptionState case Subscribed(:final subscription)) {
          helpers.scheduleShowSnackBar(
            context: context,
            duration: Duration(seconds: 10),
            content: Text(
              SubscriptionConstants.alreadySubscribed(subscription.expireAt),
            ),
            backgroundColor: Colors.red,
          );
          return _buildForm(context);
        } else {
          return _buildForm(context);
        }
      }(),
    );
  }

  Widget _buildForm(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 60),

              // Intégrer les checkbox ici
              const Text(
                'Sélectionnez vos matières :',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),

              // Checkbox Physique-Chimie
              CheckboxListTile(
                activeColor: Colors.blue,
                title: const Text(
                  'Physique-Chimie (PC)',
                  style: TextStyle(color: Colors.blue),
                ),
                enabled:
                    !ref
                        .read(subscriptionViewModelProvider.notifier)
                        .isSubscribed(),
                value: _physiqueChimie,
                onChanged: (bool? value) {
                  setState(() {
                    _physiqueChimie = value ?? false;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
              ),

              // Checkbox SVT
              CheckboxListTile(
                activeColor: Colors.blue,
                title: const Text(
                  'SVT (bientôt)',
                  style: TextStyle(color: Colors.blue),
                ),
                enabled: false,
                value: _svt,
                onChanged: (bool? value) {
                  setState(() {
                    _svt = value ?? false;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
              ),

              // Checkbox Mathématiques
              CheckboxListTile(
                activeColor: Colors.blue,
                title: const Text(
                  'Mathématiques (bientôt)',
                  style: TextStyle(color: Colors.blue),
                ),
                enabled: false,
                value: _mathematiques,
                onChanged: (bool? value) {
                  setState(() {
                    _mathematiques = value ?? false;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
              ),

              const SizedBox(height: 32),

              // Bouton S'abonner
              ElevatedButton(
                onPressed: () async {
                  await ref
                      .read(subscriptionViewModelProvider.notifier)
                      .checkSubscription();

                  if (ref
                          .read(internetViewmodelProvider.notifier)
                          .isConnected() &&
                      ref
                          .read(authViewModelProvider.notifier)
                          .isAuthenticated() &&
                      !ref
                          .read(subscriptionViewModelProvider.notifier)
                          .isSubscribed()) {
                    if (_physiqueChimie || _svt || _mathematiques) {
                      ref
                          .read(subscriptionViewModelProvider.notifier)
                          .makeSubscriptionPending(
                            _physiqueChimie,
                            _svt,
                            _mathematiques,
                          );
                    } else {
                      ref.read(noSubjectIsSelectedProvider.notifier).state =
                          true;
                    }
                  }
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
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(width: 8),

                    () {
                      if (ref.read(internetViewmodelProvider)
                          case InternetLoading()) {
                        return CircularProgressIndicator(color: Colors.white);
                      } else if (ref.read(subscriptionViewModelProvider)
                          case SubscriptionLoading()) {
                        return CircularProgressIndicator(color: Colors.white);
                      } else {
                        return Icon(Icons.arrow_forward, color: Colors.white);
                      }
                    }(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
