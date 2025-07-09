import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

class InputEmail extends ConsumerStatefulWidget {
  const InputEmail({super.key, required this.controller});

  final TextEditingController controller;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InputEmailState();
}

class _InputEmailState extends ConsumerState<InputEmail> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final authState = ref.watch(authViewModelProvider);

        bool isAuth = false;

        if (authState case Authenticated()) {
          isAuth = true;
        }

        return TextFormField(
          controller: widget.controller,
          enabled: !isAuth,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "votre email",
            prefixIcon: const Icon(Icons.email, color: Colors.blue),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.blue),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.blue),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
            labelStyle: const TextStyle(color: Colors.blue),
          ),

          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'email manquant';
            }
            if (!value.contains('@')) {
              return 'email invalide';
            }
            return null;
          },
        );
      },
    );
  }
}
