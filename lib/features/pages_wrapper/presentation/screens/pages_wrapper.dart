import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/home/presentation/screens/home_screen.dart';
import 'package:scientiboost/features/exos/presentation/screens/exos_screen.dart';
import 'package:scientiboost/features/exams/presentation/screens/exams_screen.dart';

import 'package:scientiboost/features/pages_wrapper/presentation/viewmodels/current_page_viewmodel.dart';

import 'package:scientiboost/core/common_widgets/first_app_bar.dart';
import 'package:scientiboost/core/common_widgets/second_app_bar.dart';

class PagesWrapper extends ConsumerStatefulWidget {
  const PagesWrapper({super.key});

  @override
  ConsumerState<PagesWrapper> createState() => _PagesWrapperState();
}

class _PagesWrapperState extends ConsumerState<PagesWrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FirstAppBar(),
      body: SafeArea(
        child: Column(
          children: [_buildSecondAppBar(), Expanded(child: _buildPage())],
        ),
      ),
    );
  }

  Widget _buildSecondAppBar() {
    return SecondAppBar();
  }

  Widget _buildPage() {
    final currentPageState = ref.watch(currentPageViewModelProvider);

    if (currentPageState case Home()) {
      return _buildHomePage();
    } else if (currentPageState case Exercices()) {
      return _buildExercicesPage();
    } else if (currentPageState case Exams()) {
      return _buildExamensPage();
    } else if (currentPageState case Formules()) {
      return _buildFormulesPage();
    } else if (currentPageState case Astuces()) {
      return _buildAstucesPage();
    } else {
      return _buildHomePage();
    }
  }
}

Widget _buildHomePage() {
  return SingleChildScrollView(
    padding: EdgeInsets.all(20.0),
    child: HomeScreen(),
  );
}

Widget _buildExercicesPage() {
  return Container(
    color: Colors.white,
    child: SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: ExosScreen(),
    ),
  );
}

Widget _buildExamensPage() {
  return Container(
    color: Colors.white,
    child: SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: ExamsScreen(),
    ),
  );
}

Widget _buildFormulesPage() {
  return SingleChildScrollView(
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Formules',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        _buildFakeContent('Découvrez nos différentes formules d\'abonnement.'),
      ],
    ),
  );
}

Widget _buildAstucesPage() {
  return SingleChildScrollView(
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Astuces',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        _buildFakeContent(
          'Conseils et astuces pour optimiser votre apprentissage.',
        ),
      ],
    ),
  );
}

Widget _buildFakeContent(String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      ...List.generate(
        20,
        (index) => Container(
          margin: EdgeInsets.only(bottom: 12),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Section ${index + 1}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in '
                'reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui '
                'officia deserunt mollit anim id est laborum.',
                style: TextStyle(fontSize: 14, height: 1.5),
              ),
              SizedBox(height: 12),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    'Contenu ${index + 1}',
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 100), // Espace supplémentaire pour tester le scroll
    ],
  );
}
