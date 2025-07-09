import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/providers.dart';
import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';

class ButtonExoExam extends ConsumerStatefulWidget {
  const ButtonExoExam({
    super.key,
    required this.text,
    required this.route,
    this.backgroundColor,
  });

  final String route;
  final String text;
  final Color? backgroundColor;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ButtonExoExamState();
}

class _ButtonExoExamState extends ConsumerState<ButtonExoExam> {
  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authViewModelProvider);

    bool isAuth = false;

    if (authState case Authenticated()) {
      isAuth = true;
    }

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.backgroundColor ?? Colors.blue,
        foregroundColor: Colors.white, // Texte et icône blancs
        padding: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
      onPressed:
          isAuth
              ? () {
                ref
                    .read(subscriptionViewModelProvider.notifier)
                    .goToExo(route: widget.route);
              }
              : () {
                ref.read(goRouterProvider).push("/signin");
              },
      child: Row(
        mainAxisSize: MainAxisSize.min, // Ajuste la taille du Row au contenu
        children: [
          Text(
            widget.text,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(width: 8),

          Icon(Icons.arrow_forward, color: Colors.white, size: 20),
        ],
      ),
    );
  }
}
