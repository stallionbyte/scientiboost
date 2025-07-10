import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants.dart';

class DetailsBindingEnergyCl35 extends ConsumerWidget {
  const DetailsBindingEnergyCl35({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Z = 17;
    final N = 18;
    final m_p_u_val = 1.007276;
    final m_n_u_val = 1.008665;
    final m_core_u_val = 34.969;

    final total_mass_nucleons_sep = (Z * m_p_u_val) + (N * m_n_u_val);

    return DetailsHandler(
      detailsTitle: "Calcul détaillé du défaut de masse (Δm)",
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: ExoConstants.fontSize, color: Colors.black),
              children: <InlineSpan>[
                PhyNucLatexContants.delta,
                const TextSpan(text: "m = (Z × m_p + N × m_n) - m_noyau"),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Avec:",
            style: TextStyle(fontSize: ExoConstants.fontSize, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DonneesPhyNucLatexConstants.mp, // Displays m_p = 1,007276u
                SizedBox(height: 5),
                DonneesPhyNucLatexConstants.mn, // Displays m_n = 1,008665u
                SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: ExoConstants.fontSize, color: Colors.black),
                    children: [
                      const TextSpan(text: "m_noyau ("),
                      PhyNucLatexContants.chlore35,
                      const TextSpan(text: ") = 34,969 u"),
                    ]
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Calcul de la masse des nucléons séparés:",
            style: TextStyle(fontSize: ExoConstants.fontSize, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "(17 × ${m_p_u_val} u) + (18 × ${m_n_u_val} u)",
              style: TextStyle(fontSize: ExoConstants.fontSize),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "= ${ (Z * m_p_u_val).toStringAsFixed(5) } u + ${ (N * m_n_u_val).toStringAsFixed(5) } u",
              style: TextStyle(fontSize: ExoConstants.fontSize),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "= ${total_mass_nucleons_sep.toStringAsFixed(5)} u",
              style: TextStyle(fontSize: ExoConstants.fontSize, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
           Text(
            "Calcul du défaut de masse:",
            style: TextStyle(fontSize: ExoConstants.fontSize, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: ExoConstants.fontSize, color: Colors.black),
                children: <InlineSpan>[
                  PhyNucLatexContants.delta,
                  TextSpan(text: "m = ${total_mass_nucleons_sep.toStringAsFixed(5)} u - ${m_core_u_val} u"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: ExoConstants.fontSize, color: Colors.black, fontWeight: FontWeight.bold),
                children: <InlineSpan>[
                  PhyNucLatexContants.delta,
                  TextSpan(text: "m = ${(total_mass_nucleons_sep - m_core_u_val).toStringAsFixed(5)} u"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
