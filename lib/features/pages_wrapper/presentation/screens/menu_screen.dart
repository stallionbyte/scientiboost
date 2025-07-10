import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:scientiboost/features/pages_wrapper/presentation/viewmodels/current_page_viewmodel.dart';

import 'package:scientiboost/core/providers.dart';

class MenuScreen extends ConsumerWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authViewModelProvider);

    final router = ref.read(goRouterProvider);

    final List<Widget> menuItems = [
      if (authState is! Authenticated)
        _buildMenuCard(
          icon: Icons.login,
          title: 'se connecter',
          color: Colors.blue,
          onTap: () => router.push('/signin'),
        ),
      if (authState is! Authenticated)
        _buildMenuCard(
          icon: Icons.person_add,
          title: "s'inscrire",
          color: Colors.blue,
          onTap: () => router.push('/signup'),
        ),
      if (authState is Authenticated)
        _buildMenuCard(
          icon: Icons.logout,
          title: 'se déconnecter',
          color: Colors.blue,
          onTap: () => router.push('/signout'),
        ),
      _buildMenuCard(
        icon: Icons.functions,
        title: 'Formules',
        color: Colors.blue,
        onTap: () {
          ref.read(currentPageViewModelProvider.notifier).goToFormules();
        },
      ),
      _buildMenuCard(
        icon: Icons.lightbulb_circle,
        title: 'Astuces',
        color: Colors.blue,
        onTap: () {
          ref.read(currentPageViewModelProvider.notifier).goToAstuces();
        },
      ),
    ];

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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _buildMenu(authState: authState, menuItems: menuItems),
      ),
    );
  }

  Widget _buildMenu({
    required AuthState authState,
    required List<Widget> menuItems,
  }) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildProfil(authState: authState),
          GridView.count(
            shrinkWrap: true, // important pour qu’il fonctionne dans un scroll
            physics: NeverScrollableScrollPhysics(), // évite conflit scroll
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            children: menuItems,
          ),
        ],
      ),
    );
  }

  Widget _buildPerson() {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.blue,
      child: Icon(Icons.person, color: Colors.white, size: 30),
    );
  }

  Widget _buildUserEmail(WidgetRef ref) {
    return Text(
      ref.read(authViewModelProvider.notifier).getUser()?.email ?? 'email',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget _buildProfil({required AuthState authState}) {
    return Consumer(
      builder: (context, ref, child) {
        return authState is Authenticated
            ? GestureDetector(
              onTap: () {
                ref.read(goRouterProvider).push('/profil');
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
                    _buildPerson(),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // mettre l'email de l'utilisateur
                        _buildUserEmail(ref),
                        Text(
                          'Voir votre profil',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
            : SizedBox.shrink();
      },
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
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
