import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

class Correction4 extends ConsumerStatefulWidget {
  const Correction4({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction4State();
}

class _Correction4State extends ConsumerState<Correction4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          ClipRRect(
            borderRadius: BorderRadius.circular(20.0), // Rayon des coins
            child: Image.asset(
              "assets/img/pc/m(t)-4T.png",
              width:
                  MediaQuery.of(context).size.width *
                  0.8, // 80% de la largeur de l'écran
              fit: BoxFit.contain, // Maintenir les proportions
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
