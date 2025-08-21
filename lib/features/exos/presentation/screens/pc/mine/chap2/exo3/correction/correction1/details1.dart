import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/mine/demos/demos.dart';

class Details1 extends ConsumerStatefulWidget {
  const Details1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details1State();
}

class _Details1State extends ConsumerState<Details1> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          aNegligeableDevantB(
            a: r"[OH^-]",
            b: r"[H_3O^+]",
            valueA: r"3,16 \cdot 10^{-12}",
            valueB: r"3,16 \cdot 10^{-3}",
            quotient: r"10^{-9}",
          ),
        ],
      ),
    );
  }
}
