import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/providers.dart';
import 'package:scientiboost/core/constants.dart';
import 'package:scientiboost/core/common_widgets/first_app_bar.dart';

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
  // Variables pour stocker les choix actuels.
  // Elles sont "nullables" (avec '?') car au début, rien n'est sélectionné.
  String? _selectedFavoritesGroup;

  // Listes des options disponibles pour les menus déroulants
  final List<String> _favoritesGroup = ['exercices', 'examens'];

  @override
  Widget build(BuildContext context) {
    ref.watch(localStorageProvider);
    ref.watch(goRouterProvider);
    ref.watch(exoViewmodelProvider);
    ref.watch(examViewmodelProvider);

    return Scaffold(
      appBar: FirstAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40),
                // --- Menu déroulant pour la CLASSE ---
                DropdownMenu<String>(
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
                ),

                const SizedBox(height: 30),

                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (
                    Widget child,
                    Animation<double> animation,
                  ) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: _buildFavorites(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Construit et retourne le widget de contenu spécifique
  /// basé sur les choix de `_selectedFavoritesGroup` et `_selectedMatiere`.

  Widget? _buildFavorites() {
    // Observer le FutureProvider
    final localStorage = ref.watch(localStorageProvider);

    // Si l'un des deux choix n'est pas encore fait, on n'affiche rien
    // ou un message invitant à faire une sélection.
    if (_selectedFavoritesGroup == null) {
      // La clé permet à AnimatedSwitcher de savoir que le widget a changé
      return const Center(
        key: ValueKey('placeholder'),
        child: Text(
          'Veuillez sélectionner les favoris',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      );
    }

    // On crée une clé unique pour chaque combinaison pour que l'animation fonctionne correctement
    final key = ValueKey('$_selectedFavoritesGroup');

    // remplacer Placeholder() par le texte centré <Contenu>

    Widget? favorites;

    if (_selectedFavoritesGroup == 'exercices') {
      final routes =
          localStorage.getStringList(StorageKeysConstants.favoritesExos) ?? [];

      if (routes.isNotEmpty) {
        favorites = Column(
          key: key,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var route in routes)
              GestureDetector(
                onTap: () {
                  ref.read(goRouterProvider).push(route);
                },

                child: Card(
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
                ),
              ),
          ],
        );
      } else {
        favorites = const Center(
          key: ValueKey('favorites_exos_empty'),
          child: Text(
            'Aucun exercice favori enrégistré',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
        );
      }
    } else if (_selectedFavoritesGroup == 'examens') {
      final routes =
          localStorage.getStringList(StorageKeysConstants.favoritesExams) ?? [];

      if (routes.isNotEmpty) {
        favorites = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var route in routes)
              GestureDetector(
                onTap: () {
                  ref.read(goRouterProvider).push(route);
                },

                child: Card(
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
                ),
              ),
          ],
        );
      } else {
        favorites = const Center(
          key: ValueKey('favorites_exams_empty'),
          child: Text(
            'Aucun examen favori enrégistré',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
        );
      }
    }

    // On retourne le contenu dans une carte stylisée

    // return la variable contenu ici

    return favorites;
  }
}
