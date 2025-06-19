import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../common_widgets/subscription_button.dart';

import '../../features/auth/presentation/viewmodels/auth_viewmodel.dart';
import '../../features/pages_wrapper/presentation/viewmodels/current_page_viewmodel.dart';

import '../providers.dart';

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
      title: Row(
        children: [
          GestureDetector(
            onTap:
                () => ref
                    .read(currentPageViewModelProvider.notifier)
                    .setState(CurrentPageState.home()),
            child: Container(
              width: 44,
              height: 44,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Image.asset('assets/icon/icon.png', width: 44, height: 44),
            ),
          ),
          const SizedBox(width: 8),
          const SubscriptionButton(),
        ],
      ),
      actions: [
        if (ref.read(authViewModelProvider.notifier).isAuthenticated()) ...[
          GestureDetector(
            onTap: () {
              ref
                  .read(goRouterProvider)
                  .push(
                    '/profil',
                    extra: ref.read(authViewModelProvider.notifier).getUser(),
                  );
            },
            child: Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: Icon(Icons.person, color: Colors.grey[600], size: 20),
            ),
          ),
        ],
      ],
    );
  }
}
