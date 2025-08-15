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
];
