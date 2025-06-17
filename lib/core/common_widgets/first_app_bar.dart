import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../common_widgets/subscription_button.dart';

import '../../features/auth/presentation/viewmodels/auth_viewmodel.dart';
import '../../features/pages_wrapper/presentation/viewmodels/current_page_viewmodel.dart';

import '../providers.dart';

class FirstAppBar extends ConsumerStatefulWidget {
  const FirstAppBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FirstAppBarState();
}

class _FirstAppBarState extends ConsumerState<FirstAppBar> {
  @override
  Widget build(BuildContext context) {
    ref.watch(currentPageViewModelProvider);
    ref.watch(goRouterProvider);
    ref.watch(authViewModelProvider);

    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.3),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            // Logo circulaire
            GestureDetector(
              onTap:
                  () => ref
                      .read(currentPageViewModelProvider.notifier)
                      .setState(CurrentPageState.home()),
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Image.asset(
                  'assets/icon/icon.png',
                  width: 44,
                  height: 44,
                ),
              ),
            ),
            SizedBox(width: 8),

            // Bouton S'abonner
            SubscriptionButton(),

            SizedBox(width: 8),

            // Icône utilisateur (si authentifié)
            if (ref.read(authViewModelProvider.notifier).isAuthenticated()) ...[
              GestureDetector(
                onTap: () {
                  ref
                      .read(goRouterProvider)
                      .push(
                        '/profil',
                        extra:
                            ref.read(authViewModelProvider.notifier).getUser(),
                      );
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                  child: Icon(Icons.person, color: Colors.grey[600], size: 20),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
