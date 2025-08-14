import 'package:scientiboost/core/providers/go_router/exos/exos_exports.dart';

import '../exports/chap1_exports.dart';

final matiere = "Physique-Chimie";

final pcMecaChap1Routes = [
  GoRoute(
    path: RoutesNamesConstants.pcNucChap1ExosRoutesExo1,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap1,
        exoNum: 1,
        enonce: PcMecaChap1Exo1Enonce(),
        correction: PcMecaChap1Exo1Correction(),
        route: RoutesNamesConstants.pcNucChap1ExosRoutesExo1,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap1ExosRoutesExo2,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap1,
        exoNum: 2,
        enonce: PcMecaChap1Exo2Enonce(),
        correction: PcMecaChap1Exo2Correction(),
        route: RoutesNamesConstants.pcNucChap1ExosRoutesExo2,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap1ExosRoutesExo3,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap1,
        exoNum: 3,
        enonce: PcMecaChap1Exo3Enonce(),
        correction: PcMecaChap1Exo3Correction(),
        route: RoutesNamesConstants.pcNucChap1ExosRoutesExo3,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap1ExosRoutesExo4,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap1,
        exoNum: 4,
        enonce: PcMecaChap1Exo4Enonce(),
        correction: PcMecaChap1Exo4Correction(),
        route: RoutesNamesConstants.pcNucChap1ExosRoutesExo4,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap1ExosRoutesExo5,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap1,
        exoNum: 5,
        enonce: PcMecaChap1Exo5Enonce(),
        correction: PcMecaChap1Exo5Correction(),
        route: RoutesNamesConstants.pcNucChap1ExosRoutesExo5,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap1ExosRoutesExo6,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap1,
        exoNum: 6,
        enonce: PcMecaChap1Exo6Enonce(),
        correction: PcMecaChap1Exo6Correction(),
        route: RoutesNamesConstants.pcNucChap1ExosRoutesExo6,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap1ExosRoutesExo7,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap1,
        exoNum: 7,
        enonce: PcMecaChap1Exo7Enonce(),
        correction: PcMecaChap1Exo7Correction(),
        route: RoutesNamesConstants.pcNucChap1ExosRoutesExo7,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap1ExosRoutesExo8,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap1,
        exoNum: 8,
        enonce: PcMecaChap1Exo8Enonce(),
        correction: PcMecaChap1Exo8Correction(),
        route: RoutesNamesConstants.pcNucChap1ExosRoutesExo8,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap1ExosRoutesExo9,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap1,
        exoNum: 9,
        enonce: PcMecaChap1Exo9Enonce(),
        correction: PcMecaChap1Exo9Correction(),
        route: RoutesNamesConstants.pcNucChap1ExosRoutesExo9,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap1ExosRoutesExo10,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 11,
        chapTitle: PcChaptitlesConstants.chap1,
        exoNum: 10,
        enonce: PcMecaChap1Exo10Enonce(),
        correction: PcMecaChap1Exo10Correction(),
        route: RoutesNamesConstants.pcNucChap1ExosRoutesExo10,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),
];
