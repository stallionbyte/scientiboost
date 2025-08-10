import 'package:scientiboost/core/providers/go_router/exos/exos_exports.dart';

import '../exports/chap13_exports.dart';

final matiere = "Physique-Chimie";

final pcNucChap13Routes = [
  GoRoute(
    path: RoutesNamesConstants.pcNucChap13ExosRoutesExo1,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap13,
        exoNum: 1,
        enonce: PcNucChap13Exo1Enonce(),
        correction: PcNucChap13Exo1Correction(),
        route: RoutesNamesConstants.pcNucChap13ExosRoutesExo1,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap13ExosRoutesExo2,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap13,
        exoNum: 2,
        enonce: PcNucChap13Exo2Enonce(),
        correction: PcNucChap13Exo2Correction(),
        route: RoutesNamesConstants.pcNucChap13ExosRoutesExo2,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap13ExosRoutesExo3,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap13,
        exoNum: 3,
        enonce: PcNucChap13Exo3Enonce(),
        correction: PcNucChap13Exo3Correction(),
        route: RoutesNamesConstants.pcNucChap13ExosRoutesExo3,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),
];
