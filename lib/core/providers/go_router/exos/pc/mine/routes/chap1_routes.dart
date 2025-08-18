import 'package:scientiboost/core/providers/go_router/exos/exos_exports.dart';

import '../exports/chap1_exports.dart';

final matiere = "Physique-Chimie";

final pcMineChap1Routes = [
  GoRoute(
    path: RoutesNamesConstants.pcMineChap1ExosRoutesExo1,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 1,
        chapTitle: PcChaptitlesConstants.chimChap1,
        exoNum: 1,
        enonce: PcMineChap1Exo1Enonce(),
        correction: PcMineChap1Exo1Correction(),
        route: RoutesNamesConstants.pcMineChap1ExosRoutesExo1,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcMineChap1ExosRoutesExo2,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 1,
        chapTitle: PcChaptitlesConstants.chimChap1,
        exoNum: 2,
        enonce: PcMineChap1Exo2Enonce(),
        correction: PcMineChap1Exo2Correction(),
        route: RoutesNamesConstants.pcMineChap1ExosRoutesExo2,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcMineChap1ExosRoutesExo3,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 1,
        chapTitle: PcChaptitlesConstants.chimChap1,
        exoNum: 3,
        enonce: PcMineChap1Exo3Enonce(),
        correction: PcMineChap1Exo3Correction(),
        route: RoutesNamesConstants.pcMineChap1ExosRoutesExo3,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcMineChap1ExosRoutesExo4,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 1,
        chapTitle: PcChaptitlesConstants.chimChap1,
        exoNum: 4,
        enonce: PcMineChap1Exo4Enonce(),
        correction: PcMineChap1Exo4Correction(),
        route: RoutesNamesConstants.pcMineChap1ExosRoutesExo4,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcMineChap1ExosRoutesExo5,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 1,
        chapTitle: PcChaptitlesConstants.chimChap1,
        exoNum: 5,
        enonce: PcMineChap1Exo5Enonce(),
        correction: PcMineChap1Exo5Correction(),
        route: RoutesNamesConstants.pcMineChap1ExosRoutesExo5,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcMineChap1ExosRoutesExo6,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 1,
        chapTitle: PcChaptitlesConstants.chimChap1,
        exoNum: 6,
        enonce: PcMineChap1Exo6Enonce(),
        correction: PcMineChap1Exo6Correction(),
        route: RoutesNamesConstants.pcMineChap1ExosRoutesExo6,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcMineChap1ExosRoutesExo7,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 1,
        chapTitle: PcChaptitlesConstants.chimChap1,
        exoNum: 7,
        enonce: PcMineChap1Exo7Enonce(),
        correction: PcMineChap1Exo7Correction(),
        route: RoutesNamesConstants.pcMineChap1ExosRoutesExo7,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcMineChap1ExosRoutesExo8,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 1,
        chapTitle: PcChaptitlesConstants.chimChap1,
        exoNum: 8,
        enonce: PcMineChap1Exo8Enonce(),
        correction: PcMineChap1Exo8Correction(),
        route: RoutesNamesConstants.pcMineChap1ExosRoutesExo8,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcMineChap1ExosRoutesExo9,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 1,
        chapTitle: PcChaptitlesConstants.chimChap1,
        exoNum: 9,
        enonce: PcMineChap1Exo9Enonce(),
        correction: PcMineChap1Exo9Correction(),
        route: RoutesNamesConstants.pcMineChap1ExosRoutesExo9,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcMineChap1ExosRoutesExo10,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 1,
        chapTitle: PcChaptitlesConstants.chimChap1,
        exoNum: 10,
        enonce: PcMineChap1Exo10Enonce(),
        correction: PcMineChap1Exo10Correction(),
        route: RoutesNamesConstants.pcMineChap1ExosRoutesExo10,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),
];
