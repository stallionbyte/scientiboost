import 'exams_export.dart';

final examsRoutes = [
  GoRoute(
    path: RoutesNamesConstants.pcBacD2024,
    builder: (context, state) {
      return ExamScreen(
        pays: 'Burkina Faso',
        matiere: 'Physique-Chimie',
        examInfos: 'BAC D 2024',
        favorites: StorageKeysConstants.favoritesExams,
        route: RoutesNamesConstants.pcBacD2024,

        enonceChimExo1: PcBacD2024ChimExo1Enonce(),
        correctionChimExo1: PcBacD2024ChimExo1Correction(),
        enonceChimExo2: PcBacD2024ChimExo2Enonce(),
        correctionChimExo2: PcBacD2024ChimExo2Correction(),

        enoncePhyExo1: PcBacD2024PhyExo1Enonce(),
        correctionPhyExo1: PcBacD2024PhyExo1Correction(),
        enoncePhyExo2: PcBacD2024PhyExo2Enonce(),
        correctionPhyExo2: PcBacD2024PhyExo2Correction(),
        enoncePhyExo3: PcBacD2024PhyExo3Enonce(),
        correctionPhyExo3: PcBacD2024PhyExo3Correction(),
      );
    },
  ),
];
