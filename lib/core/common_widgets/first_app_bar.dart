import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:scientiboost/features/pages_wrapper/presentation/viewmodels/current_page_viewmodel.dart';

import 'package:scientiboost/core/common_widgets/subscription_button.dart';

import 'package:scientiboost/core/providers.dart';

class FirstAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const FirstAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(currentPageViewModelProvider);
    ref.watch(goRouterProvider);
    ref.watch(authViewModelProvider);

    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(color: Colors.grey.shade300, height: 1),
      ),

      title: GestureDetector(
        onTap:
            () => ref
                .read(currentPageViewModelProvider.notifier)
                .setState(CurrentPageState.home()),
        child: Image.asset('assets/icon/icon.png', width: 44, height: 44),
      ),

      actions: [
        const SubscriptionButton(),

        const SizedBox(width: 8),

        if (ref.read(authViewModelProvider.notifier).isAuthenticated()) ...[
          GestureDetector(
            onTap: () {
              ref.read(goRouterProvider).push('/favorites');
            },
            child: Icon(Icons.favorite, color: Colors.blue, size: 35),
          ),

          const SizedBox(width: 8),

          GestureDetector(
            onTap: () {
              ref
                  .read(goRouterProvider)
                  .push(
                    '/profil',
                    extra: ref.read(authViewModelProvider.notifier).getUser(),
                  );
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, color: Colors.white, size: 30),
            ),
          ),
        ],
      ],
    );
  }
}
