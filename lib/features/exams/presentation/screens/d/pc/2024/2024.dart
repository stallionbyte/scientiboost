import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../core/common_widgets/first_app_bar.dart';
import '../../../../../../../core/common_widgets/third_app_bar.dart';
import '../../../../../../../core/constants.dart';

class PcBacD2024 extends ConsumerStatefulWidget {
  const PcBacD2024({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PcBacD2024State();
}

class _PcBacD2024State extends ConsumerState<PcBacD2024> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FirstAppBar(),

      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [_buildThirdAppBar(), Expanded(child: _buildExam())],
        ),
      ),
    );
  }

  Widget _buildThirdAppBar() {
    return ThirdAppBar(
      storageFavoritesKey: StorageKeysConstants.favoritesExams,
      favoriteRoute: RoutesNamesConstants.pcBacD2024,
    );
  }

  Widget _buildExam() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Pays:',

                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '   Burkina Faso'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Matère:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),

                      TextSpan(text: '   Physique-Chimie'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),

          Text(
            'BAC D 2024',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Chimie',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),

          Text(
            'Exercice 1',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.black,
            ),
          ), // Widget de l'exercice

          SizedBox(height: 20),
          Text(
            'Exercice 2',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.black,
            ),
          ), // Widget de l'exercice

          SizedBox(height: 20),
          Text(
            'Physique',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Exercice 1',
            style: const TextStyle(
              fontSize: 25,

              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ), // Widget de l'exercice

          SizedBox(height: 20),
          Text(
            'Exercice 2',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.black,
            ),
          ), // Widget de l'exercice

          SizedBox(height: 20),
          Text(
            'Exercice 3',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

              color: Colors.black,
            ),
          ), // Widget de l'exercice

          SizedBox(height: 40),
        ],
      ),
    );
  }
}
