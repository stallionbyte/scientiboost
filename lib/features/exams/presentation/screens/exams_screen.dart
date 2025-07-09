import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants.dart';
import 'package:scientiboost/core/common_widgets/button_exo_exam.dart';
import 'package:scientiboost/core/helpers.dart' as helpers;
import 'package:scientiboost/features/internet/presentation/viewmodels/internet_viewmodel.dart';
import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';

class ExamsScreen extends ConsumerStatefulWidget {
  const ExamsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExamsScreenState();
}

class _ExamsScreenState extends ConsumerState<ExamsScreen> {
  @override
  Widget build(BuildContext context) {
    ref.listen(internetViewmodelProvider, (previous, next) {
      if (next case InternetError(:final message)) {
        if (mounted) {
          helpers.showSnackBar(
            context: context,
            backgroundColor: Colors.red,
            content: Row(
              children: [
                Icon(Icons.cloud_off_rounded, color: Colors.white),
                SizedBox(width: 8),
                Expanded(child: Text(message)),
              ],
            ),
          );
        }
      } else if (next case InternetIsNotConnected()) {
        if (mounted) {
          helpers.showSnackBar(
            context: context,
            backgroundColor: Colors.red,
            content: Row(
              children: [
                Icon(Icons.signal_wifi_off_rounded, color: Colors.white),
                SizedBox(width: 8),
                Expanded(child: Text(InternetConstants.connexionError)),
              ],
            ),
          );
        }
      }
    });
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
    return Consumer(
      builder: (context, ref, child) {
        final internetState = ref.watch(internetViewmodelProvider);
        final subscriptionState = ref.watch(subscriptionViewModelProvider);

        if (internetState case InternetLoading()) {
          return Center(child: CircularProgressIndicator(color: Colors.blue));
        } else if (subscriptionState case SubscriptionLoading()) {
          return Center(child: CircularProgressIndicator(color: Colors.blue));
        } else {
          return SingleChildScrollView(
            child: Column(
              children: [
                _buildPageHeader(),

                SizedBox(height: 40),

                _buildTitle(title: "BAC  D", fontSize: 30.0),

                SizedBox(height: 40),

                ButtonExoExam(
                  text: "2024",
                  route: RoutesNamesConstants.pcBacD2024,
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
