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
];
