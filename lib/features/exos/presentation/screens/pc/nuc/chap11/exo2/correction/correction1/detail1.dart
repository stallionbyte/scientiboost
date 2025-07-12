import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';

import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data_constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/helpers.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/constants.dart';

class Details1 extends ConsumerStatefulWidget {
  const Details1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details1State();
}

class _Details1State extends ConsumerState<Details1> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: detailsEnergieDeLiaisonParNucleon(
        Z: 92,
        A: 235,
        masseProton: PhyNucLatexContants.masseProtonEnUValue,
        masseNeutron: PhyNucLatexContants.masseNeutronEnUValue,
        masseNoyau: DonneesPhyNucLatexConstants.masseU235EnUValue,
      ),
    );
  }
}
