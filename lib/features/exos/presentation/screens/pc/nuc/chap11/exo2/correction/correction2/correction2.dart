import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/constants.dart';
import 'package:scientiboost/core/common_widgets/details_handler.dart'; // Assuming this is the correct path
import 'details_binding_energy_cl35.dart'; // To be created

class PcNucChap11Exo2Correction2 extends ConsumerStatefulWidget {
  const PcNucChap11Exo2Correction2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcNucChap11Exo2Correction2State();
}

class _PcNucChap11Exo2Correction2State
    extends ConsumerState<PcNucChap11Exo2Correction2> {
  @override
  Widget build(BuildContext context) {
    final Z = 17;
    final N = 18;
    final m_p_u = 1.007276;
    final m_n_u = 1.008665;
    final m_core_u = 34.969;
    final MeV_per_u = 931.5;

    final delta_m_u = (Z * m_p_u + N * m_n_u) - m_core_u;
    final binding_energy_MeV = delta_m_u * MeV_per_u;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Calcul de l'énergie de liaison (E_l) de chlore-35:",
            style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              style: TextStyle(
                  fontSize: ExoConstants.richTextFontSize, color: Colors.black),
              children: <InlineSpan>[
                const TextSpan(text: "1. Déterminer la composition du noyau de chlore-35 ("),
                PhyNucLatexContants.chlore35,
                const TextSpan(text: "):"),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text("   - Nombre de protons (Z) = 17", style: TextStyle(fontSize: ExoConstants.fontSize)),
          Text("   - Nombre de neutrons (N) = A - Z = 35 - 17 = 18", style: TextStyle(fontSize: ExoConstants.fontSize)),
          SizedBox(height: 20),
          Text(
            "2. Calculer le défaut de masse (Δm):",
            style: TextStyle(
                fontSize: ExoConstants.richTextFontSize, color: Colors.black),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: ExoConstants.fontSize, color: Colors.black),
              children: <InlineSpan>[
                PhyNucLatexContants.delta,
                const TextSpan(text: "m = (Z × m_p + N × m_n) - m_noyau"),
              ],
            ),
          ),
          SizedBox(height: 5),
          DetailsBindingEnergyCl35(), // Shows detailed calculation steps for Δm
          SizedBox(height: 10),
           RichText(
            text: TextSpan(
              style: TextStyle(fontSize: ExoConstants.richTextFontSize, color: Colors.black, fontWeight: FontWeight.bold),
              children: <InlineSpan>[
                PhyNucLatexContants.delta,
                TextSpan(text: "m = ${delta_m_u.toStringAsFixed(5)} u"),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            "3. Calculer l'énergie de liaison (E_l):",
            style: TextStyle(
                fontSize: ExoConstants.richTextFontSize, color: Colors.black),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: ExoConstants.fontSize, color: Colors.black),
              children: <InlineSpan>[
                const TextSpan(text: "E_l = Δm × 931,5 MeV/u"),
              ],
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: ExoConstants.fontSize, color: Colors.black),
              children: <InlineSpan>[
                const TextSpan(text: "E_l = ${delta_m_u.toStringAsFixed(5)} u × 931,5 MeV/u"),
              ],
            ),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: ExoConstants.richTextFontSize, color: Colors.black, fontWeight: FontWeight.bold),
              children: <InlineSpan>[
                const TextSpan(text: "E_l ≈ ${binding_energy_MeV.toStringAsFixed(2)} MeV"),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
