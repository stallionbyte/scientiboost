import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

class Correction5 extends ConsumerStatefulWidget {
  const Correction5({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction5State();
}

class _Correction5State extends ConsumerState<Correction5> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0), // Rayon des coins
            child: Image.asset(
              "assets/img/pc/A(t)-3T.png",
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
