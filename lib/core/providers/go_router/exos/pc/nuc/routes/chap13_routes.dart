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

  GoRoute(
    path: RoutesNamesConstants.pcNucChap13ExosRoutesExo4,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap13,
        exoNum: 4,
        enonce: PcNucChap13Exo4Enonce(),
        correction: PcNucChap13Exo4Correction(),
        route: RoutesNamesConstants.pcNucChap13ExosRoutesExo4,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap13ExosRoutesExo5,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap13,
        exoNum: 5,
        enonce: PcNucChap13Exo5Enonce(),
        correction: PcNucChap13Exo5Correction(),
        route: RoutesNamesConstants.pcNucChap13ExosRoutesExo5,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap13ExosRoutesExo6,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap13,
        exoNum: 6,
        enonce: PcNucChap13Exo6Enonce(),
        correction: PcNucChap13Exo6Correction(),
        route: RoutesNamesConstants.pcNucChap13ExosRoutesExo6,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap13ExosRoutesExo7,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap13,
        exoNum: 7,
        enonce: PcNucChap13Exo7Enonce(),
        correction: PcNucChap13Exo7Correction(),
        route: RoutesNamesConstants.pcNucChap13ExosRoutesExo7,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap13ExosRoutesExo8,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap13,
        exoNum: 8,
        enonce: PcNucChap13Exo8Enonce(),
        correction: PcNucChap13Exo8Correction(),
        route: RoutesNamesConstants.pcNucChap13ExosRoutesExo8,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),
];
