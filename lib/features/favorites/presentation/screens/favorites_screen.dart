import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/providers/providers.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'package:scientiboost/features/exos/presentation/viewmodels/exo_viewmodel.dart';
import 'package:scientiboost/features/exams/presentation/viewmodels/exam_viewmodel.dart';

// La page principale qui gère les sélections

class FavoritesScreen extends ConsumerStatefulWidget {
  const FavoritesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FavoritesScreenState();
}

class _FavoritesScreenState extends ConsumerState<FavoritesScreen> {
  String? _selectedFavoritesGroup;

  final List<String> _favoritesGroup = ['exercices', 'examens'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorites',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(child: SingleChildScrollView(child: _buildPage())),
    );
  }

  Widget _buildPage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 40),

          // --- Menu déroulant pour la CLASSE ---
          _buildDropDownMenu(),

          const SizedBox(height: 30),

          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: _buildFavorites(),
          ),
        ],
      ),
    );
  }

  Widget _buildDropDownMenu() {
    return DropdownMenu<String>(
      // Le label qui s'affiche au-dessus du champ
      label: const Text('Favoris'),
      // Message d'aide qui s'affiche à l'intérieur
      hintText: 'Choisissez vos favoris',
      // Occupe toute la largeur disponible
      expandedInsets: EdgeInsets.zero,
      // La liste des options à afficher
      dropdownMenuEntries:
          _favoritesGroup.map((String favorites) {
            return DropdownMenuEntry<String>(
              value: favorites,
              label: favorites,
            );
          }).toList(),
      // Cette fonction est appelée quand un choix est fait
      onSelected: (String? value) {
        // On met à jour l'état de la page avec le nouveau choix
        setState(() {
          _selectedFavoritesGroup = value;
        });
      },
    );
  }

  Widget _buildPlaceholder() {
    return const Center(
      key: ValueKey('placeholder'),
      child: Text(
        'Veuillez sélectionner les favoris',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  Widget _buildExoFavoriteCard({required String route}) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(
          ref
                  .read(exoViewmodelProvider.notifier)
                  .getMatiereFromExoRoute(route) ??
              'Inconnu',
          style: const TextStyle(fontSize: 16),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Chapitre: ${ref.read(exoViewmodelProvider.notifier).getChapFromExoRoute(route) ?? 'Inconnu'}',
            ),
            Text(
              'Exercice: ${ref.read(exoViewmodelProvider.notifier).getExoNumFromExoRoute(route) ?? 'Inconnu'}',
            ),
          ],
        ),
        leading: const Icon(Icons.assignment, color: Colors.blue),
      ),
    );
  }

  Widget _buildExamFavoriteCard({required String route}) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(
          'Matiere:  ${ref.read(examViewmodelProvider.notifier).getMatiereFromExamRoute(route) ?? 'Inconnu'}',
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Examen: ${ref.read(examViewmodelProvider.notifier).getBacFromExamRoute(route)?.replaceAll("-", " ").toUpperCase() ?? 'Inconnu'}',
            ),
            Text(
              'Année: ${ref.read(examViewmodelProvider.notifier).getAnneeFromExamRoute(route) ?? 'Inconnu'}',
            ),
            Text(
              'Pays: ${ref.read(examViewmodelProvider.notifier).getPaysFromExamRoute(route) ?? 'Inconnu'}',
            ),
          ],
        ),
        leading: const Icon(Icons.school, color: Colors.blue),
      ),
    );
  }

  Widget _buildExoFavorite({required String route}) {
    return GestureDetector(
      onTap: () {
        ref.read(goRouterProvider).push(route);
      },

      child: _buildExoFavoriteCard(route: route),
    );
  }

  Widget _buildExamFavorite({required String route}) {
    return GestureDetector(
      onTap: () {
        ref.read(goRouterProvider).push(route);
      },

      child: _buildExamFavoriteCard(route: route),
    );
  }

  Widget _buildExoPlaceholder() {
    return const Center(
      key: ValueKey('favorites_exos_empty'),
      child: Text(
        'Aucun exercice favori enrégistré',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  Widget _buildExamPlaceholder() {
    return const Center(
      key: ValueKey('favorites_exams_empty'),
      child: Text(
        'Aucun examen favori enrégistré',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  Widget _buildExamFavorites({required List<String> routes}) {
    return Column(
      key: ValueKey("Examens"),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [for (var route in routes) _buildExamFavorite(route: route)],
    );
  }

  Widget _buildExoFavorites({required List<String> routes}) {
    return Column(
      key: ValueKey("Exercices"),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [for (var route in routes) _buildExoFavorite(route: route)],
    );
  }

  Widget? _buildFavorites() {
    final localStorage = ref.watch(localStorageProvider);
    Widget? favorites;

    if (_selectedFavoritesGroup == null) {
      return _buildPlaceholder();
    }

    if (_selectedFavoritesGroup == 'exercices') {
      final routes =
          localStorage.getStringList(StorageKeysConstants.favoritesExos) ?? [];

      if (routes.isNotEmpty) {
        favorites = _buildExoFavorites(routes: routes);
      } else {
        favorites = _buildExoPlaceholder();
      }
    } else if (_selectedFavoritesGroup == 'examens') {
      final routes =
          localStorage.getStringList(StorageKeysConstants.favoritesExams) ?? [];

      if (routes.isNotEmpty) {
        favorites = _buildExamFavorites(routes: routes);
      } else {
        favorites = _buildExamPlaceholder();
      }
    }

    return favorites;
  }
}
