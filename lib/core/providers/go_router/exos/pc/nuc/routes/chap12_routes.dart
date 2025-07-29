import 'package:scientiboost/core/providers/go_router/exos/exos_exports.dart';

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
];
