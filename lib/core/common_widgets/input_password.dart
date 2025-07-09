import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';

class InputPassword extends ConsumerStatefulWidget {
  const InputPassword({super.key, required this.controller});

  final TextEditingController controller;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InputPasswordState();
}

class _InputPasswordState extends ConsumerState<InputPassword> {
  bool _isPasswordHidden = true;

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
          obscureText: _isPasswordHidden,
          enabled: !isAuth,
          decoration: InputDecoration(
            labelText: 'Mot de passe',
            hintText: 'votre mot de passe',
            prefixIcon: const Icon(Icons.lock, color: Colors.blue),
            suffixIcon: IconButton(
              icon: Icon(
                _isPasswordHidden ? Icons.visibility : Icons.visibility_off,
                color: Colors.blue,
              ),
              onPressed: () {
                setState(() {
                  _isPasswordHidden = !_isPasswordHidden;
                });
              },
            ),
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
              return 'mot de passe manquant';
            }
            if (value.length < 6) {
              return 'minimun 6 caractères';
            }
            return null;
          },
        );
      },
    );
  }
}
