import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/subscription_viewmodel.dart';

class SubscriptionSreen extends ConsumerStatefulWidget {
  const SubscriptionSreen({super.key});

  @override
  ConsumerState<SubscriptionSreen> createState() => _SubscriptionSreenState();
}

class _SubscriptionSreenState extends ConsumerState<SubscriptionSreen> {
  final _formKey = GlobalKey<FormState>();

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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Abonnement',
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
        if (subscriptionState case SubscriptionLoading()) {
          return const Center(child: CircularProgressIndicator());
        } else if (subscriptionState case SubscriptionError(:final message)) {
          return _buildForm(context, error: message);
        } else {
          return _buildForm(context);
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

                // Titre
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
                  title: const Text('Physique-Chimie (PC)'),
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
                  title: const Text('SVT'),
                  enabled:
                      !ref
                          .read(subscriptionViewModelProvider.notifier)
                          .isSubscribed(),
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
                  title: const Text('Mathématiques'),
                  enabled:
                      !ref
                          .read(subscriptionViewModelProvider.notifier)
                          .isSubscribed(),
                  value: _mathematiques,
                  onChanged: (bool? value) {
                    setState(() {
                      _mathematiques = value ?? false;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                ),

                const SizedBox(height: 24),

                if (error != null) ...[
                  Text(error, style: const TextStyle(color: Colors.red)),
                ],

                const SizedBox(height: 32),

                // Bouton S'abonner
                ElevatedButton(
                  onPressed: () {
                    if (!ref
                        .read(subscriptionViewModelProvider.notifier)
                        .isSubscribed()) {
                      return () {
                        if (_physiqueChimie || _svt || _mathematiques) {
                          if (_formKey.currentState!.validate()) {
                            ref
                                .read(subscriptionViewModelProvider.notifier)
                                .makeSubscriptionPending(
                                  _physiqueChimie,
                                  _svt,
                                  _mathematiques,
                                );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Veuillez sélectionner au moins une matière.',
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      };
                    } else {
                      return null;
                    }
                  }(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                  ),
                  child: const Text(
                    "S'abonner",
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
}
