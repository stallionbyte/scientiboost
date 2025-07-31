import 'package:scientiboost/core/providers/go_router/exos/exos_exports.dart';

import '../exports/chap12_exports.dart';

final matiere = 'Physique-Chimie';

final pcNucChap12Routes = [
  GoRoute(
    path: RoutesNamesConstants.pcNucChap12ExosRoutesExo1,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 12,
        chapTitle: PcChaptitlesConstants.chap12,
        exoNum: 1,
        enonce: PcNucChap12Exo1Enonce(),
        correction: PcNucChap12Exo1Correction(),
        route: RoutesNamesConstants.pcNucChap12ExosRoutesExo1,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap12ExosRoutesExo2,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 12,
        chapTitle: PcChaptitlesConstants.chap12,
        exoNum: 2,
        enonce: PcNucChap12Exo2Enonce(),
        correction: PcNucChap12Exo2Correction(),
        route: RoutesNamesConstants.pcNucChap12ExosRoutesExo2,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap12ExosRoutesExo3,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 12,
        chapTitle: PcChaptitlesConstants.chap12,
        exoNum: 3,
        enonce: PcNucChap12Exo3Enonce(),
        correction: PcNucChap12Exo3Correction(),
        route: RoutesNamesConstants.pcNucChap12ExosRoutesExo3,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap12ExosRoutesExo4,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 12,
        chapTitle: PcChaptitlesConstants.chap12,
        exoNum: 4,
        enonce: PcNucChap12Exo4Enonce(),
        correction: PcNucChap12Exo4Correction(),
        route: RoutesNamesConstants.pcNucChap12ExosRoutesExo4,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap12ExosRoutesExo5,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 12,
        chapTitle: PcChaptitlesConstants.chap12,
        exoNum: 5,
        enonce: PcNucChap12Exo5Enonce(),
        correction: PcNucChap12Exo5Correction(),
        route: RoutesNamesConstants.pcNucChap12ExosRoutesExo5,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcNucChap12ExosRoutesExo6,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 12,
        chapTitle: PcChaptitlesConstants.chap12,
        exoNum: 6,
        enonce: PcNucChap12Exo6Enonce(),
        correction: PcNucChap12Exo6Correction(),
        route: RoutesNamesConstants.pcNucChap12ExosRoutesExo6,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),
];
