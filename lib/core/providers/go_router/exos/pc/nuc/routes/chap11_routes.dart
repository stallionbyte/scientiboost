import 'package:scientiboost/core/providers/go_router/exos/exos_exports.dart';

import '../exports/chap11_exports.dart';

final pcNucChap11Routes = [
  GoRoute(
    path: RoutesNamesConstants.pcNucChap11ExosRoutesExo1,
    builder: (context, state) {
      return ExoScreen(
        matiere: 'Physique-Chimie',
        chapNum: 11,
        chapTitle: 'Le noyau atomique',
        exoNum: 1,
        enonce: PcNucChap11Exo1Enonce(),
        correction: PcNucChap11Exo1Correction(),
        route: RoutesNamesConstants.pcNucChap11ExosRoutesExo1,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap11ExosRoutesExo2,
    builder: (context, state) {
      return ExoScreen(
        matiere: 'Physique-Chimie',
        chapNum: 11,
        chapTitle: 'Le noyau atomique',
        exoNum: 2,
        enonce: PcNucChap11Exo2Enonce(),
        correction: PcNucChap11Exo2Correction(),
        route: RoutesNamesConstants.pcNucChap11ExosRoutesExo2,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap11ExosRoutesExo3,
    builder: (context, state) {
      return ExoScreen(
        matiere: 'Physique-Chimie',
        chapNum: 11,
        chapTitle: 'Le noyau atomique',
        exoNum: 3,
        enonce: PcNucChap11Exo3Enonce(),
        correction: PcNucChap11Exo3Correction(),
        route: RoutesNamesConstants.pcNucChap11ExosRoutesExo3,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap11ExosRoutesExo4,
    builder: (context, state) {
      return ExoScreen(
        matiere: 'Physique-Chimie',
        chapNum: 11,
        chapTitle: 'Le noyau atomique',
        exoNum: 4,
        enonce: PcNucChap11Exo4Enonce(),
        correction: PcNucChap11Exo4Correction(),
        route: RoutesNamesConstants.pcNucChap11ExosRoutesExo4,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap11ExosRoutesExo5,
    builder: (context, state) {
      return ExoScreen(
        matiere: 'Physique-Chimie',
        chapNum: 11,
        chapTitle: 'Le noyau atomique',
        exoNum: 5,
        enonce: PcNucChap11Exo5Enonce(),
        correction: PcNucChap11Exo5Correction(),
        route: RoutesNamesConstants.pcNucChap11ExosRoutesExo5,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),
];
