import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return _buildPage();
  }

  Widget _buildTitle({required String title, required double fontSize}) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderInfo({required String label, required String value}) {
    return Row(
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black, fontSize: 20),
              children: <TextSpan>[
                TextSpan(
                  text: '$label: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: '   $value'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPageHeader() {
    return Column(
      children: [
        _buildHeaderInfo(label: "Classe", value: "Terminale D"),

        SizedBox(height: 20),

        _buildHeaderInfo(label: "Matière", value: "Physique-Chimie"),
      ],
    );
  }

  Widget _buildPage() {
    return Column(
      children: [
        _buildPageHeader(),

        SizedBox(height: 40),

        _buildTitle(title: "BAC  D", fontSize: 30.0),

        SizedBox(height: 40),

        ButtonExoExam(text: "2024", route: RoutesNamesConstants.pcBacD2024),
      ],
    );
  }
}
