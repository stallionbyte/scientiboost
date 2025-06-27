import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:scientiboost/features/pages_wrapper/presentation/viewmodels/current_page_viewmodel.dart';

import 'package:scientiboost/core/providers.dart';

class MenuScreen extends ConsumerWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(goRouterProvider);
    ref.watch(authViewModelProvider);

    final router = ref.read(goRouterProvider);
    final email_ = ref.read(authViewModelProvider.notifier).getUser()?.email;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menu',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            // Contenu principal
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    // Container profil utilisateur
                    if (ref
                        .read(authViewModelProvider.notifier)
                        .isAuthenticated())
                      GestureDetector(
                        onTap: () {
                          router.push('/profil');
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16.0),
                          margin: const EdgeInsets.only(bottom: 16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withValues(alpha: 0.1),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.blue,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // mettre l'email de l'utilisateur
                                  Text(
                                    email_ ?? 'email',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Voir votre profil',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    // Grille des options
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 1.2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        children: [
                          // Se connecter
                          if (!ref
                              .read(authViewModelProvider.notifier)
                              .isAuthenticated())
                            _buildMenuCard(
                              icon: Icons.login,
                              title: 'se connecter',
                              color: Colors.blue,
                              onTap: () {
                                router.push('/signin');
                              },
                            ),

                          // S'inscrire
                          if (!ref
                              .read(authViewModelProvider.notifier)
                              .isAuthenticated())
                            _buildMenuCard(
                              icon: Icons.person_add,
                              title: "s'inscrire",
                              color: Colors.blue,
                              onTap: () {
                                router.push('/signup');
                              },
                            ),

                          // Se déconnecter
                          if (ref
                              .read(authViewModelProvider.notifier)
                              .isAuthenticated())
                            _buildMenuCard(
                              icon: Icons.logout,
                              title: 'se déconnecter',
                              color: Colors.blue,
                              onTap: () {
                                // rediriger vers une page dédiée
                                router.push('/signout');
                              },
                            ),

                          // Formules
                          _buildMenuCard(
                            icon: Icons.functions,
                            title: 'Formules',
                            color: Colors.blue,
                            onTap: () {
                              ref
                                  .read(currentPageViewModelProvider.notifier)
                                  .setState(CurrentPageState.formules());

                              router.push('/pages-wrapper');
                            },
                          ),

                          // Astuces
                          _buildMenuCard(
                            icon: Icons.lightbulb_circle,
                            title: 'Astuces',
                            color: Colors.blue,
                            onTap: () {
                              ref
                                  .read(currentPageViewModelProvider.notifier)
                                  .setState(CurrentPageState.astuces());

                              router.push('/pages-wrapper');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(icon, color: color, size: 28),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
