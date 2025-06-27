import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/exams/presentation/viewmodels/exam_viewmodel.dart';

import 'package:scientiboost/core/providers.dart';
import 'package:scientiboost/core/constants.dart';
import 'package:scientiboost/core/common_widgets/button_exo_exam.dart';

class ExamsScreen extends ConsumerStatefulWidget {
  const ExamsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExamsScreenState();
}

class _ExamsScreenState extends ConsumerState<ExamsScreen> {
  @override
  Widget build(BuildContext context) {
    ref.watch(goRouterProvider);
    ref.watch(examViewmodelProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Classe:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '   Terminale D'),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 40),

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

          Row(
            children: [
              Expanded(
                child: Text(
                  'BAC   D',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

          SizedBox(height: 40),

          ButtonExoExam(
            text: '2024',
            route_: RoutesNamesConstants.pcBacD2024,
            onPressed: () {
              ref
                  .read(examViewmodelProvider.notifier)
                  .goToExam(route: RoutesNamesConstants.pcBacD2024);
            },
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
