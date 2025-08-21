import 'package:scientiboost/core/providers/go_router/exos/exos_exports.dart';

import '../exports/chap2_exports.dart';

final matiere = "Physique-Chimie";

final pcMineChap2Routes = [
  GoRoute(
    path: RoutesNamesConstants.pcMineChap2ExosRoutesExo1,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 2,
        chapTitle: PcChaptitlesConstants.chimChap2,
        exoNum: 1,
        enonce: PcMineChap2Exo1Enonce(),
        correction: PcMineChap2Exo1Correction(),
        route: RoutesNamesConstants.pcMineChap2ExosRoutesExo1,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcMineChap2ExosRoutesExo2,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 2,
        chapTitle: PcChaptitlesConstants.chimChap2,
        exoNum: 2,
        enonce: PcMineChap2Exo2Enonce(),
        correction: PcMineChap2Exo2Correction(),
        route: RoutesNamesConstants.pcMineChap2ExosRoutesExo2,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),

  GoRoute(
    path: RoutesNamesConstants.pcMineChap2ExosRoutesExo3,
    builder: (context, state) {
      return ExoScreen(
        matiere: matiere,
        chapNum: 2,
        chapTitle: PcChaptitlesConstants.chimChap2,
        exoNum: 3,
        enonce: PcMineChap2Exo3Enonce(),
        correction: PcMineChap2Exo3Correction(),
        route: RoutesNamesConstants.pcMineChap2ExosRoutesExo3,
        favorites: StorageKeysConstants.favoritesExos,
      );
    },
  ),
];
