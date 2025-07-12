import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BordersWrapper extends ConsumerWidget {
  const BordersWrapper({
    super.key,
    required this.wrapped,
    this.color = Colors.blue,
  });

  final Widget wrapped;
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: color, width: 2.0),
        borderRadius: BorderRadius.circular(10.0), // Coins arrondis
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Espace interne
        child: wrapped,
      ),
    );
  }
}
