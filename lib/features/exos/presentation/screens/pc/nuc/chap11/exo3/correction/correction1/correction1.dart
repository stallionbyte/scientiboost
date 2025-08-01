import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/providers/go_router/exports.dart';

import 'package:scientiboost/core/widgets_builders/pc/nuc/builders.dart';

class Correction1 extends ConsumerStatefulWidget {
  const Correction1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction1State();
}

class _Correction1State extends ConsumerState<Correction1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp20,
          donnerCompositionNucleide(
            nucleide: PhyNucConstants.cobalt60,
            A: 60,
            Z: 26,
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
