import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/internet/presentation/viewmodels/internet_viewmodel.dart';
import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';

import 'package:scientiboost/core/common_widgets/button_exo_exam.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart' as helpers;

class ExosScreen extends ConsumerStatefulWidget {
  const ExosScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExosScreenState();
}

class _ExosScreenState extends ConsumerState<ExosScreen> {
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
                const SizedBox(width: 8),
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
                const SizedBox(width: 8),
                Expanded(child: Text(InternetConstants.connexionError)),
              ],
            ),
          );
        }
      }
    });

    return _buildPage();
  }

  Widget _buildPageContent() {
    return Column(
      children: [
        EspConstants.esp40,
        _buildPageHeader(),

        EspConstants.esp40,

        _buildTitle(title: "Physique", fontSize: 30.0),

        EspConstants.esp40,

        _buildTitle(title: "Nucléaire", fontSize: 20.0),

        EspConstants.esp40,

        _buildNuclaireAccordion(),

        EspConstants.esp40,

        _buildTitle(title: "Mécanique", fontSize: 20.0),

        EspConstants.esp40,

        _buildTitle(title: "Electricité", fontSize: 20.0),

        EspConstants.esp40,

        _buildTitle(title: "Chimie", fontSize: 30.0),

        EspConstants.esp40,

        _buildTitle(title: "Organique", fontSize: 20.0),

        EspConstants.esp40,

        _buildTitle(title: "Minérale", fontSize: 20.0),

        EspConstants.esp40,
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
          return SingleChildScrollView(child: _buildPageContent());
        }
      },
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

        EspConstants.esp20,

        _buildHeaderInfo(label: "Matière", value: "Physique-Chimie"),
      ],
    );
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

  Widget _buildNuclaireAccordion() {
    return ExpansionPanelList.radio(
      elevation: 2,
      expandedHeaderPadding: EdgeInsets.zero,
      expandIconColor: Colors.black,
      children: [
        ExpansionPanelRadio(
          value: 'phyNucChap11',
          canTapOnHeader: true,
          backgroundColor: Colors.white,
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                'chapitre 11: le noyau atomique',
                style: TextStyle(fontSize: 16),
              ),
            );
          },
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 1',
                  route: RoutesNamesConstants.pcNucChap11ExosRoutesExo1,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 2',
                  route: RoutesNamesConstants.pcNucChap11ExosRoutesExo2,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 3',
                  route: RoutesNamesConstants.pcNucChap11ExosRoutesExo3,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 4',
                  route: RoutesNamesConstants.pcNucChap11ExosRoutesExo4,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 5',
                  route: RoutesNamesConstants.pcNucChap11ExosRoutesExo5,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 6',
                  route: RoutesNamesConstants.pcNucChap11ExosRoutesExo6,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 7',
                  route: RoutesNamesConstants.pcNucChap11ExosRoutesExo7,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 8',
                  route: RoutesNamesConstants.pcNucChap11ExosRoutesExo8,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 9',
                  route: RoutesNamesConstants.pcNucChap11ExosRoutesExo9,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 10',
                  route: RoutesNamesConstants.pcNucChap11ExosRoutesExo10,
                ),

                EspConstants.esp40,
              ],
            ),
          ),
        ),

        ExpansionPanelRadio(
          value: 'phyNucChap12',
          canTapOnHeader: true,
          backgroundColor: Colors.white,
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                'chapitre 12: ${PcChaptitlesConstants.chap12}',
                style: TextStyle(fontSize: 16),
              ),
            );
          },
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 1',
                  route: RoutesNamesConstants.pcNucChap12ExosRoutesExo1,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 2',
                  route: RoutesNamesConstants.pcNucChap12ExosRoutesExo2,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 3',
                  route: RoutesNamesConstants.pcNucChap12ExosRoutesExo3,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 4',
                  route: RoutesNamesConstants.pcNucChap12ExosRoutesExo4,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 5',
                  route: RoutesNamesConstants.pcNucChap12ExosRoutesExo5,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 6',
                  route: RoutesNamesConstants.pcNucChap12ExosRoutesExo6,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 7',
                  route: RoutesNamesConstants.pcNucChap12ExosRoutesExo7,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 8',
                  route: RoutesNamesConstants.pcNucChap12ExosRoutesExo8,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 9',
                  route: RoutesNamesConstants.pcNucChap12ExosRoutesExo9,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 10',
                  route: RoutesNamesConstants.pcNucChap12ExosRoutesExo10,
                ),

                EspConstants.esp40,
              ],
            ),
          ),
        ),

        ExpansionPanelRadio(
          value: 'phyNucChap13',
          canTapOnHeader: true,
          backgroundColor: Colors.white,
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: const Text(
                'chapitre 12: ${PcChaptitlesConstants.chap13}',
                style: TextStyle(fontSize: 16),
              ),
            );
          },
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 1',
                  route: RoutesNamesConstants.pcNucChap13ExosRoutesExo1,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 2',
                  route: RoutesNamesConstants.pcNucChap13ExosRoutesExo2,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 3',
                  route: RoutesNamesConstants.pcNucChap13ExosRoutesExo3,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 4',
                  route: RoutesNamesConstants.pcNucChap13ExosRoutesExo4,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 5',
                  route: RoutesNamesConstants.pcNucChap13ExosRoutesExo5,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 6',
                  route: RoutesNamesConstants.pcNucChap13ExosRoutesExo6,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 7',
                  route: RoutesNamesConstants.pcNucChap13ExosRoutesExo7,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 8',
                  route: RoutesNamesConstants.pcNucChap13ExosRoutesExo8,
                ),

                EspConstants.esp40,
                ButtonExoExam(
                  text: 'Exercice 9',
                  route: RoutesNamesConstants.pcNucChap13ExosRoutesExo9,
                ),

                EspConstants.esp40,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
