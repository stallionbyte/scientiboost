import 'pc/meca/routes/chap1_routes.dart';
import 'pc/nuc/routes/chap12_routes.dart';
import 'pc/nuc/routes/chap11_routes.dart';
import 'pc/nuc/routes/chap13_routes.dart';

import 'pc/mine/routes/chap1_routes.dart';
import 'pc/mine/routes/chap2_routes.dart';

final exosRoutes = [
  ...pcMecaChap1Routes,
  ...pcNucChap11Routes,
  ...pcNucChap12Routes,
  ...pcNucChap13Routes,

  ...pcMineChap1Routes,
  ...pcMineChap2Routes,
];
